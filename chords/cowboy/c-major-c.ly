\version "2.26.0"

\include "../../library/fret-diagrams.ly"

c-major-c-open-frets = #'((mute 6)
                          (place-fret 5 3 "3" red)
                          (place-fret 4 2 "2" blue)
                          (open 3)
                          (place-fret 2 1 "1" red)
                          (open 1))

\header {
  tagline = ##f
}

c-major-c-open = \markup \fret-diagram-with-footer "C MAJOR" ##f #0 #diagram-size #c-major-c-open-frets #'("" "R" "3" "5" "R" "3")

\standalone \c-major-c-open
