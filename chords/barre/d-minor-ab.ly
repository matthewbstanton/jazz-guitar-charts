\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-a-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 6 "1" red)
                          (place-fret 3 8 "3" darkgreen)
                          (place-fret 2 9 "4" red)
                          (place-fret 1 7 "2"))

\header {
  tagline = ##f
}

d-minor-a-flat = \markup \fret-diagram-with-footer "Ab MINOR" ##f #0 #diagram-size #d-minor-a-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-a-flat
