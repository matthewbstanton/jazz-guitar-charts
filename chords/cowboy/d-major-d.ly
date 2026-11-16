\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-d-open-frets = #'((mute 6)
                          (mute 5)
                          (open 4)
                          (place-fret 3 2 "1" darkgreen)
                          (place-fret 2 3 "3" red)
                          (place-fret 1 2 "2" blue))

\header {
  tagline = ##f
}

d-major-d-open = \markup \fret-diagram-with-footer "D MAJOR" ##f #0 #diagram-size #d-major-d-open-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-d-open
