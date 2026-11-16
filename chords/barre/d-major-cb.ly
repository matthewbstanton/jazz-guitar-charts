\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-c-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 9 "1" red)
                          (place-fret 3 11 "2" darkgreen)
                          (place-fret 2 12 "4" red)
                          (place-fret 1 11 "3" blue))

\header {
  tagline = ##f
}

d-major-c-flat = \markup \fret-diagram-with-footer "Cb MAJOR" ##f #0 #diagram-size #d-major-c-flat-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-c-flat
