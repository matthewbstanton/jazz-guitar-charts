\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-c-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 9 "1" red)
                          (place-fret 3 11 "3" darkgreen)
                          (place-fret 2 12 "4" red)
                          (place-fret 1 10 "2"))

\header {
  tagline = ##f
}

d-minor-c-flat = \markup \fret-diagram-with-footer "Cb MINOR" ##f #0 #diagram-size #d-minor-c-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-c-flat
