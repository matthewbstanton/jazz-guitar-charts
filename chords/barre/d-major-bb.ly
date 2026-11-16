\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-b-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 8 "1" red)
                          (place-fret 3 10 "2" darkgreen)
                          (place-fret 2 11 "4" red)
                          (place-fret 1 10 "3" blue))

\header {
  tagline = ##f
}

d-major-b-flat = \markup \fret-diagram-with-footer "Bb MAJOR" ##f #0 #diagram-size #d-major-b-flat-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-b-flat
