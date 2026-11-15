\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-b-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 9 "1" red)
                     (place-fret 3 11 "3" darkgreen)
                     (place-fret 2 12 "4" red)
                     (place-fret 1 10 "2"))

\header {
  tagline = ##f
}

d-minor-b = \markup \fret-diagram-with-footer "B MINOR" ##f #0 #diagram-size #d-minor-b-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-b
