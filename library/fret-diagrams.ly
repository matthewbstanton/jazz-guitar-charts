% A fret diagram is only as wide as its ink: a dot on an outer string sticks
% out further than an X, and an X further than a bare string. Rows of diagrams
% therefore drift out of line with each other. With uniform-width set, every
% diagram takes up the room it would with a dot on both outer strings, so the
% grids line up from row to row and sit centred under their titles.
#(define-markup-command (fret-diagram-uniform layout props placements) (list?)
    #:properties ((uniform-width #f))

    (let* ((draw (lambda (extra)
                     (interpret-markup layout props
                         #{ \markup \fret-diagram-verbose #(append extra placements) #})))
           (width (lambda (stencil) (interval-length (ly:stencil-extent stencil X))))
           (diagram (draw '())))

    (if (not uniform-width)
        diagram
        ;; measure how much wider the diagram gets with a dot added on string 6,
        ;; and with one on string 1 as well; the first says how far left the
        ;; full-width box starts, the second how wide it is
        (let* ((fret (caddr (assq 'place-fret placements)))
               (left-dot (list 'place-fret 6 fret))
               (right-dot (list 'place-fret 1 fret))
               (start (- (car (ly:stencil-extent diagram X))
                         (- (width (draw (list left-dot))) (width diagram)))))
        (ly:make-stencil (ly:stencil-expr diagram)
                         (cons start (+ start (width (draw (list left-dot right-dot)))))
                         (ly:stencil-extent diagram Y))))))

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
                \fontsize #(- size 6) \bold #title
                \vspace #0.5
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
    (let* ((footer-placements (map (lambda (item)
                     (if (eq? (car item) 'place-fret)
                         `(place-fret ,(cadr item) ,(caddr item)
                                      ,(make-with-dimension-markup X '(0 . 0)
                                           (make-center-align-markup
                                               (list-ref footer (- 6 (cadr item)))))
                                      ,@(list-tail item (min 4 (length item))))
                         item))
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