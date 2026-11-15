\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-c-frets = #'((place-fret 6 8 "1" red)
                     (place-fret 5 10 "3" darkgreen)
                     (place-fret 4 10 "4" red)
                     (place-fret 3 9 "2" blue)
                     (place-fret 2 8 "1" darkgreen)
                     (place-fret 1 8 "1" red))

\header {
  tagline = ##f
}

e-major-c = \markup \fret-diagram-with-footer "C MAJOR" ##f #0 #diagram-size #e-major-c-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-c
