\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-f-flat-frets = #'((place-fret 6 12 "1" red)
                          (place-fret 5 14 "3" darkgreen)
                          (place-fret 4 14 "4" red)
                          (place-fret 3 13 "2" blue)
                          (place-fret 2 12 "1" darkgreen)
                          (place-fret 1 12 "1" red))

\header {
  tagline = ##f
}

e-major-f-flat = \markup \fret-diagram-with-footer "Fb MAJOR" ##f #0 #diagram-size #e-major-f-flat-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-f-flat
