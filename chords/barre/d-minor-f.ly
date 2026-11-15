\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-f-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 3 "1" red)
                     (place-fret 3 5 "3" darkgreen)
                     (place-fret 2 6 "4" red)
                     (place-fret 1 4 "2"))

\header {
  tagline = ##f
}

d-minor-f = \markup \fret-diagram-with-footer "F MINOR" ##f #0 #diagram-size #d-minor-f-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-f
