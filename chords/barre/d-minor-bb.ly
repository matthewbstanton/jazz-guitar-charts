\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-b-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 8 "1" red)
                          (place-fret 3 10 "3" darkgreen)
                          (place-fret 2 11 "4" red)
                          (place-fret 1 9 "2"))

\header {
  tagline = ##f
}

d-minor-b-flat = \markup \fret-diagram-with-footer "Bb MINOR" ##f #0 #diagram-size #d-minor-b-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-b-flat
