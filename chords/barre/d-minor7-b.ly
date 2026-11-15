\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-b-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 9 "1" red)
                             (place-fret 3 11 "4" darkgreen)
                             (place-fret 2 10 "2")
                             (place-fret 1 10 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-b = \markup \fret-diagram-with-footer "B MINOR 7" ##f #0 #diagram-size #d-minor-seventh-b-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-b
