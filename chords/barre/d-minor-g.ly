\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-g-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 5 "1" red)
                     (place-fret 3 7 "3" darkgreen)
                     (place-fret 2 8 "4" red)
                     (place-fret 1 6 "2"))

\header {
  tagline = ##f
}

d-minor-g = \markup \fret-diagram-with-footer "G MINOR" ##f #0 #diagram-size #d-minor-g-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-g
