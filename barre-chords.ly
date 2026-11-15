\version "2.26.0"

\include "library/fret-diagrams.ly"


e-shaped-chord = #'((place-fret 6 12 "1" red)
                   (place-fret 5 14 "3" darkgreen)
                   (place-fret 4 14 "4" red)
                   (place-fret 3 13 "2" blue)
                   (place-fret 2 12 "1" darkgreen)
                   (place-fret 1 12 "1" red))

e-shaped-minor-chord = #'((place-fret 6 12 "1" red)
                   (place-fret 5 14 "3" darkgreen)
                   (place-fret 4 14 "4" red)
                   (place-fret 3 12 "1")
                   (place-fret 2 12 "1" darkgreen)
                   (place-fret 1 12 "1" red))

e-shaped-dom-chord = #'((place-fret 6 12 "1" red)
                   (place-fret 5 14 "3" darkgreen)
                   (place-fret 4 12 "1")
                   (place-fret 3 13 "2" blue)
                   (place-fret 2 12 "1" darkgreen)
                   (place-fret 1 12 "1" red))

e-shaped-minor-dom-chord = #'((place-fret 6 12 "1" red)
                   (place-fret 5 14 "3" darkgreen)
                   (place-fret 4 12 "1")
                   (place-fret 3 12 "1")
                   (place-fret 2 12 "1" darkgreen)
                   (place-fret 1 12 "1" red))

a-shaped-chord = #'((mute 6)
                   (place-fret 5 12 "1" red)
                   (place-fret 4 14 "2" darkgreen)
                   (place-fret 3 14 "2" red)
                   (place-fret 2 14 "2" blue)
                   (place-fret 1 12 "1" darkgreen))

a-shaped-minor-chord = #'((mute 6)
                   (place-fret 5 12 "1" red)
                   (place-fret 4 14 "3" darkgreen)
                   (place-fret 3 14 "4" red)
                   (place-fret 2 13 "2")
                   (place-fret 1 12 "1" darkgreen))

a-shaped-dom-chord = #'((mute 6)
                   (place-fret 5 12 "1" red)
                   (place-fret 4 14 "3" darkgreen)
                   (place-fret 3 12 "1")
                   (place-fret 2 14 "4" blue)
                   (place-fret 1 12 "1" darkgreen))

a-shaped-minor-dom-chord = #'((mute 6)
                   (place-fret 5 12 "1" red)
                   (place-fret 4 14 "3" darkgreen)
                   (place-fret 3 12 "1")
                   (place-fret 2 13 "2")
                   (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 5\mm
  right-margin = 5\mm
}

% the C shape has more frets in view than the others, so it needs a larger diagram
diagram-size = #4

\markup \column {
  \fill-line { \huge \bold "Barre Chords" }
  \vspace #2
  \fill-line { \line { \bold "E-Shaped" } }
  \fill-line {
    \line {
      \fret-diagram-with-footer "Major" ##t #1 #diagram-size #e-shaped-chord #'("R" "5" "R" "3" "5" "R")
      \hspace #2
      \fret-diagram-with-footer "Minor" ##t #1 #diagram-size #e-shaped-minor-chord #'("R" "5" "R" "b3" "5" "R")
      \hspace #2
      \fret-diagram-with-footer "Dom7" ##t #1 #diagram-size #e-shaped-dom-chord #'("R" "5" "b7" "3" "5" "R")
      \hspace #2
      \fret-diagram-with-footer "Minor7" ##t #1 #diagram-size #e-shaped-minor-dom-chord #'("R" "5" "b7" "b3" "5" "R")
    }
  }
  \vspace #2
  \fill-line { \line { \bold "A-Shaped" } }
  \fill-line {
    \line {
      \fret-diagram-with-footer "Major" ##t #1 #diagram-size #a-shaped-chord #'("" "R" "5" "R" "3" "5")
      \hspace #2
      \fret-diagram-with-footer "Minor" ##t #1 #diagram-size #a-shaped-minor-chord #'("" "R" "5" "R" "b3" "5")
      \hspace #2
      \fret-diagram-with-footer "Dom7" ##t #1 #diagram-size #a-shaped-dom-chord #'("" "R" "5" "b7" "3" "5")
      \hspace #2
      \fret-diagram-with-footer "Minor7" ##t #1 #diagram-size #a-shaped-minor-dom-chord #'("" "R" "5" "b7" "b3" "5")
    }
  }
}