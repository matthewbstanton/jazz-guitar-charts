\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-d-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 11 "1" red)
                          (place-fret 3 13 "3" darkgreen)
                          (place-fret 2 14 "4" red)
                          (place-fret 1 12 "2"))

\header {
  tagline = ##f
}

d-minor-d-flat = \markup \fret-diagram-with-footer "Db MINOR" ##f #0 #diagram-size #d-minor-d-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-d-flat
