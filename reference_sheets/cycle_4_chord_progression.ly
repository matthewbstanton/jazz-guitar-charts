\version "2.26.0"

\include "../library/fret-diagrams.ly"
\include "../library/footer.ly"

% Chord-quality suffixes, written the way they appear on a lead sheet:
% \maj "I" -> I△7, \min "ii" -> ii-7, \dom "V" -> V7, \hdim "vii" -> viiø7
#(define-markup-command (maj layout props root) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #root \super \concat { \triangle ##f "7" } } #}))

#(define-markup-command (min layout props root) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #root \super "-7" } #}))

#(define-markup-command (dom layout props root) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #root \super "7" } #}))

#(define-markup-command (hdim layout props root) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #root \super "ø7" } #}))

% Root names with an accidental, e.g. \flat-root "B" -> B♭
#(define-markup-command (flat-root layout props root) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #root \raise #0.6 \fontsize #-3 \flat } #}))

#(define-markup-command (sharp-root layout props root) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #root \raise #0.6 \fontsize #-3 \sharp } #}))

% Lays out one chord per bar: each markup is centered in a fixed-width
% cell, with bar lines between the cells and at both ends.
#(define-markup-command (chord-row layout props chords) (markup-list?)
  #:properties ((cell-width 11)
                (bar-height 4))
  (let* ((stencils (interpret-markup-list layout props chords))
         (bar (make-line-stencil 0.2 0 -1 0 (- bar-height 1)))
         (count (length stencils)))
    (let loop ((i 0)
               (rest stencils)
               (result (ly:stencil-translate-axis bar (* count cell-width) X)))
      (if (null? rest)
          result
          (loop (1+ i)
                (cdr rest)
                (ly:stencil-add
                  result
                  (ly:stencil-translate-axis bar (* i cell-width) X)
                  (ly:stencil-translate-axis
                    (ly:stencil-aligned-to (car rest) X CENTER)
                    (* (+ i 0.5) cell-width)
                    X)))))))

formulaMusic = \relative g, {
  \key g \major
  % A formula rather than a tune: no meter, so the eight notes sit evenly.
  \cadenzaOn
  % Keep the numerals on one level line.
  \override TextScript.staff-padding = #3
  \override TextScript.font-size = #1
  g4^\markup{\maj "I"}
  a^\markup{\min "ii"}
  b^\markup{\min "iii"}
  c^\markup{\maj "IV"}
  d^\markup{\dom "V"}
  e^\markup{\min "vi"}
  fis^\markup{\hdim "vii"}
  g^\markup{\maj "I"}
  \bar "|"
}

% Whole/half steps, offset by an eighth so each label falls midway
% between the two notes it describes.
formulaSteps = {
  \cadenzaOn
  % Spacers have no notehead to hang from, so set the height directly:
  % one level line just below the lowest note.
  \override TextScript.Y-offset = #-6.5
  \override TextScript.font-size = #1
  \override TextScript.self-alignment-X = #CENTER
  s8
  s4_\markup{\bold "W"}
  s4_\markup{\bold "W"}
  s4_\markup{\bold "H"}
  s4_\markup{\bold "W"}
  s4_\markup{\bold "W"}
  s4_\markup{\bold "W"}
  s4_\markup{\bold "H"}
  s8
}

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 5\mm
  right-margin = 5\mm
}

\markup \column {
  \vspace #2
  \fill-line { \huge \bold "Cycle 4 Chord Progression" }
  \vspace #3
  \fill-line { \bold "Major Scale Formula" }
  \vspace #1
  \fill-line {
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff <<
          { \transpose c c' \formulaMusic }
          \new Voice \formulaSteps
        >>
      >>
      \layout {
        #(layout-set-staff-size 20)
        indent = 0
        ragged-right = ##f
        % Narrower than the chord rows below so the notes sit closer together.
        line-width = 125\mm
        \context {
          \Staff
          \remove Time_signature_engraver
        }
      }
    }
  }
  \vspace #3
  \fill-line { \bold "Cycle of 4ths" }
  \vspace #1
  \fill-line {
    \large \chord-row {
      \maj "I" \maj "IV" \hdim "vii" \min "iii"
      \min "vi" \min "ii" \dom "V" \maj "I"
    }
  }
  \vspace #2
  \fill-line { \bold "Key of F" }
  \vspace #1
  \fill-line {
    \large \chord-row {
      \maj "F" \maj \flat-root "B" \hdim "E" \min "A"
      \min "D" \min "G" \dom "C" \maj "F"
    }
  }
  \vspace #2
  \fill-line { \bold "Key of G" }
  \vspace #1
  \fill-line {
    \large \chord-row {
      \maj "G" \maj "C" \hdim \sharp-root "F" \min "B"
      \min "E" \min "A" \dom "D" \maj "G"
    }
  }
}
