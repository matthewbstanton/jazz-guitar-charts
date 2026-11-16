\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-b-flat-frets = #'((place-fret 6 6 "1" red)
                          (place-fret 5 8 "3" darkgreen)
                          (place-fret 4 8 "4" red)
                          (place-fret 3 7 "2" blue)
                          (place-fret 2 6 "1" darkgreen)
                          (place-fret 1 6 "1" red))

\header {
  tagline = ##f
}

e-major-b-flat = \markup \fret-diagram-with-footer "Bb MAJOR" ##f #0 #diagram-size #e-major-b-flat-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-b-flat
