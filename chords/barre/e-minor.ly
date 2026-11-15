\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-shaped-minor-chord = #'((place-fret 6 12 "1" red)
                   (place-fret 5 14 "3" darkgreen)
                   (place-fret 4 14 "4" red)
                   (place-fret 3 12 "1")
                   (place-fret 2 12 "1" darkgreen)
                   (place-fret 1 12 "1" red))

\header {
  tagline = ##f
}

e-minor = \markup \fret-diagram-with-footer "MINOR" ##t #1 #diagram-size #e-shaped-minor-chord #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor
