\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-e-flat-frets = #'((place-fret 6 11 "1" red)
                          (place-fret 5 13 "3" darkgreen)
                          (place-fret 4 13 "4" red)
                          (place-fret 3 12 "2" blue)
                          (place-fret 2 11 "1" darkgreen)
                          (place-fret 1 11 "1" red))

\header {
  tagline = ##f
}

e-major-e-flat = \markup \fret-diagram-with-footer "Eb MAJOR" ##f #0 #diagram-size #e-major-e-flat-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-e-flat
