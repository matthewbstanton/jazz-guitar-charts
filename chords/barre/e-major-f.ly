\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-f-frets = #'((place-fret 6 1 "1" red)
                     (place-fret 5 3 "3" darkgreen)
                     (place-fret 4 3 "4" red)
                     (place-fret 3 2 "2" blue)
                     (place-fret 2 1 "1" darkgreen)
                     (place-fret 1 1 "1" red))

\header {
  tagline = ##f
}

e-major-f = \markup \fret-diagram-with-footer "F MAJOR" ##f #0 #diagram-size #e-major-f-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-f
