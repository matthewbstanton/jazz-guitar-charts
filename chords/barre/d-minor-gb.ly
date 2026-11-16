\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-g-flat-frets = #'((mute 6)
                          (mute 5)
                          (place-fret 4 4 "1" red)
                          (place-fret 3 6 "3" darkgreen)
                          (place-fret 2 7 "4" red)
                          (place-fret 1 5 "2"))

\header {
  tagline = ##f
}

d-minor-g-flat = \markup \fret-diagram-with-footer "Gb MINOR" ##f #0 #diagram-size #d-minor-g-flat-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-g-flat
