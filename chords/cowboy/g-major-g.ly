\version "2.26.0"

\include "../../library/fret-diagrams.ly"

g-major-g-open-frets = #'((place-fret 6 3 "2" red)
                          (place-fret 5 2 "1" blue)
                          (open 4)
                          (open 3)
                          (open 2)
                          (place-fret 1 3 "3" red))

\header {
  tagline = ##f
}

g-major-g-open = \markup \fret-diagram-with-footer "G MAJOR" ##f #0 #diagram-size #g-major-g-open-frets #'("R" "3" "5" "R" "3" "R")

\standalone \g-major-g-open
