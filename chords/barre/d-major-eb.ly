\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-e-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 1 "1" red)
                          (place-fret 3 3 "2" darkgreen)
                          (place-fret 2 4 "4" red)
                          (place-fret 1 3 "3" blue))

\header {
  tagline = ##f
}

d-major-e-flat = \markup \fret-diagram-with-footer "Eb MAJOR" ##f #0 #diagram-size #d-major-e-flat-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-e-flat
