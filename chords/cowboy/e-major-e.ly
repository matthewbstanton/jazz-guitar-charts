\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-e-open-frets = #'((open 6)
                          (place-fret 5 2 "2" darkgreen)
                          (place-fret 4 2 "3" red)
                          (place-fret 3 1 "1" blue)
                          (open 2)
                          (open 1))

\header {
  tagline = ##f
}

e-major-e-open = \markup \fret-diagram-with-footer "E MAJOR" ##f #0 #diagram-size #e-major-e-open-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-e-open
