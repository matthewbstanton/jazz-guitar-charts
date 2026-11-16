% Size of a chord file's diagram when it is built on its own. A chart that
% \includes chord files sets diagram-size first to draw them at its own size.
#(define-once diagram-size 4)

% Prints a chord file's diagram only when that file is the one being compiled,
% so a chart can \include the file for its definition without the diagram
% also landing on the chart's page.
standalone = #(define-void-function (diagram) (markup?)
    (if (string=? (basename (ly:parser-output-name))
                  (basename (car (ly:input-file-line-char-column (*location*))) ".ly"))
        (add-text diagram)))

% Diagrams are drawn without their title when HIDE_DIAGRAM_TITLES is set in
% the environment, for builds that print the chord name themselves.
#(define hide-diagram-titles (getenv "HIDE_DIAGRAM_TITLES"))

% Every diagram is drawn in the same size box when UNIFORM_DIAGRAMS is set in
% the environment, so that swapping one image for another doesn't move the
% grid: uniform-width is turned on, and room is left above the grid for the
% X and O marks whether or not the chord has any.
#(define uniform-diagrams (getenv "UNIFORM_DIAGRAMS"))

% A fret diagram is only as wide as its ink: a dot on an outer string sticks
% out further than an X, and an X further than a bare string. Rows of diagrams
% therefore drift out of line with each other. With uniform-width set, every
% diagram takes up the room it would with a dot on both outer strings, so the
% grids line up from row to row and sit centred under their titles.
%
% LilyPond only prints a label under a string that is fretted, so a placement
% of (open-label string label) is accepted here as well: it draws as
% (open string), with the label under the string where a dot's would go.
#(define-markup-command (fret-diagram-uniform layout props placements) (list?)
    #:properties ((uniform-width #f)
                  (size 1))

    (let* ((labelled (filter (lambda (item) (eq? (car item) 'open-label)) placements))
           (placements (map (lambda (item)
                     (if (eq? (car item) 'open-label) (list 'open (cadr item)) item))
                     placements))
           (draw (lambda (extra)
                     (interpret-markup layout props
                         #{ \markup \fret-diagram-verbose #(append extra placements) #})))
           (width (lambda (stencil) (interval-length (ly:stencil-extent stencil X))))
           (plain (draw '()))
           ;; the label is got by fretting the open string and then taking the
           ;; dot back out of the drawing, leaving the label behind; the
           ;; diagram keeps the width it has without the dot
           (dot-on? (lambda (expr strings)
                     (and (pair? expr)
                          (eq? (car expr) 'translate-stencil)
                          (pair? (caddr expr))
                          (eq? (car (caddr expr)) 'circle)
                          (any (lambda (string)
                                   (< (abs (- (car (cadr expr)) (* size (- 6 string)))) 0.01))
                               strings))))
           (without-dots (lambda (expr strings)
                     (let strip ((expr expr))
                         (cond ((dot-on? expr strings) '())
                               ((pair? expr) (cons (strip (car expr)) (strip (cdr expr))))
                               (else expr)))))
           (diagram (if (null? labelled)
                        plain
                        (let* ((fret (caddr (assq 'place-fret placements)))
                               (fretted (draw (map (lambda (item)
                                                 (list 'place-fret (cadr item) fret (caddr item)))
                                                 labelled))))
                        (ly:make-stencil
                            (without-dots (ly:stencil-expr fretted) (map cadr labelled))
                            (ly:stencil-extent plain X)
                            (cons (min (car (ly:stencil-extent plain Y))
                                       (car (ly:stencil-extent fretted Y)))
                                  (cdr (ly:stencil-extent plain Y))))))))

    (if (not (or uniform-width uniform-diagrams))
        diagram
        ;; measure how much wider the diagram gets with a dot added on string 6,
        ;; and with one on string 1 as well; the first says how far left the
        ;; full-width box starts, the second how wide it is
        (let* ((fret (caddr (assq 'place-fret placements)))
               (left-dot (list 'place-fret 6 fret))
               (right-dot (list 'place-fret 1 fret))
               (start (- (car (ly:stencil-extent diagram X))
                         (- (width (draw (list left-dot))) (width diagram))))
               ;; a mute on any string adds the row of marks above the grid
               (top (cdr (ly:stencil-extent
                             (if uniform-diagrams (draw '((mute 6))) diagram) Y))))
        (ly:make-stencil (ly:stencil-expr diagram)
                         (cons start (+ start (width (draw (list left-dot right-dot)))))
                         (cons (car (ly:stencil-extent diagram Y)) top))))))

% Letters as finger labels require the raw fret-diagram-verbose markup
% (chordmode/note fingerings only accept digits); "T" here marks a thumb.
#(define-markup-command 
    (fret-diagram-with-fingers layout props title hide-fret-number empty-frets size placements) 
    (string? boolean? number? number? list?)
    #:properties ((finger-code 'in-dot)
                  (fret-count 4))

    ;; empty-frets is the number of empty rows to leave above the real dots:
    ;; an invisible barre that many frets below the lowest used fret pulls the
    ;; diagram's start down
    (let* ((min-fret (apply min (map caddr
                     (filter (lambda (item) (eq? (car item) 'place-fret)) placements))))
           (full-placements (if (> empty-frets 0)
                                 (cons (list 'barre 1 1 (- min-fret empty-frets)) placements)
                                 placements)))

    (interpret-markup layout props
        #{
        \markup
        \column {
            \center-align {
                #(if hide-diagram-titles
                     empty-markup
                     #{ \markup \fontsize #(- size 6) \bold #title #})
                #(if hide-diagram-titles
                     empty-markup
                     #{ \markup \vspace #0.5 #})
                \override #`(size . ,size)
                \override #`(fret-diagram-details . 
                (
                    (finger-code . ,finger-code)
                    (fret-count . ,fret-count)
                    (number-type . custom)
                    (fret-label-custom-format . ,(if hide-fret-number "" "~dfr"))
                    (top-fret-thickness . ,(if hide-fret-number 0 3))
                    (barre-type . ,(if (> empty-frets 0) 'none 'curved))
                    ))
                \fret-diagram-uniform #full-placements
            }
        }
        #})))

% Same diagram with a label under each string; footer lists the six labels
% from string 6 to string 1, with "" for strings that have none.
#(define-markup-command
    (fret-diagram-with-footer layout props title hide-fret-number empty-frets size placements footer)
    (string? boolean? number? number? list? list?)

    ;; the footer is the same diagram drawn again underneath, with each
    ;; finger swapped for its string's label and printed below the string;
    ;; labels are given zero width so they can't shift the copy sideways
    (let* ((label (lambda (string)
                     (make-with-dimension-markup X '(0 . 0)
                         (make-center-align-markup (list-ref footer (- 6 string))))))
           (footer-placements (map (lambda (item)
                     (case (car item)
                         ((place-fret)
                          `(place-fret ,(cadr item) ,(caddr item)
                                       ,(label (cadr item))
                                       ,@(list-tail item (min 4 (length item)))))
                         ((open)
                          `(open-label ,(cadr item) ,(label (cadr item))))
                         (else item)))
                     placements)))

    (interpret-markup layout props
        #{
        \markup
        \combine
        \override #'(finger-code . below-string)
        % in-dot sized dots, so both copies line up
        \override #'(fret-diagram-details .
        (
            (dot-radius . 0.425)
            (dot-position . 0.525)
            (string-label-font-mag . 0.3)
            ))
        \fret-diagram-with-fingers #title #hide-fret-number #empty-frets #size #footer-placements
        \fret-diagram-with-fingers #title #hide-fret-number #empty-frets #size #placements
        #})))