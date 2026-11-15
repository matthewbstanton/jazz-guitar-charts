\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-d-frets = #'((place-fret 6 10 "1" red)
                     (place-fret 5 12 "3" darkgreen)
                     (place-fret 4 12 "4" red)
                     (place-fret 3 11 "2" blue)
                     (place-fret 2 10 "1" darkgreen)
                     (place-fret 1 10 "1" red))

\header {
  tagline = ##f
}

e-major-d = \markup \fret-diagram-with-footer "D MAJOR" ##f #0 #diagram-size #e-major-d-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-d
