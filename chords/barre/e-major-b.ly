\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-b-frets = #'((place-fret 6 7 "1" red)
                     (place-fret 5 9 "3" darkgreen)
                     (place-fret 4 9 "4" red)
                     (place-fret 3 8 "2" blue)
                     (place-fret 2 7 "1" darkgreen)
                     (place-fret 1 7 "1" red))

\header {
  tagline = ##f
}

e-major-b = \markup \fret-diagram-with-footer "B MAJOR" ##f #0 #diagram-size #e-major-b-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-b
