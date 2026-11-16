\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-g-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 4 "1" red)
                          (place-fret 3 6 "2" darkgreen)
                          (place-fret 2 7 "4" red)
                          (place-fret 1 6 "3" blue))

\header {
  tagline = ##f
}

d-major-g-flat = \markup \fret-diagram-with-footer "Gb MAJOR" ##f #0 #diagram-size #d-major-g-flat-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-g-flat
