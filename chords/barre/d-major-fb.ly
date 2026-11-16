\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-f-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 2 "1" red)
                          (place-fret 3 4 "2" darkgreen)
                          (place-fret 2 5 "4" red)
                          (place-fret 1 4 "3" blue))

\header {
  tagline = ##f
}

d-major-f-flat = \markup \fret-diagram-with-footer "Fb MAJOR" ##f #0 #diagram-size #d-major-f-flat-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-f-flat
