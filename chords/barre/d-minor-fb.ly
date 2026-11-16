\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-f-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 2 "1" red)
                          (place-fret 3 4 "3" darkgreen)
                          (place-fret 2 5 "4" red)
                          (place-fret 1 3 "2"))

\header {
  tagline = ##f
}

d-minor-f-flat = \markup \fret-diagram-with-footer "Fb MINOR" ##f #0 #diagram-size #d-minor-f-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-f-flat
