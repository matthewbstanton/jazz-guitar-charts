\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-e-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 1 "1" red)
                          (place-fret 3 3 "3" darkgreen)
                          (place-fret 2 4 "4" red)
                          (place-fret 1 2 "2"))

\header {
  tagline = ##f
}

d-minor-e-flat = \markup \fret-diagram-with-footer "Eb MINOR" ##f #0 #diagram-size #d-minor-e-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-e-flat
