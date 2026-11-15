\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-d-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 12 "1" red)
                             (place-fret 3 14 "4" darkgreen)
                             (place-fret 2 13 "2")
                             (place-fret 1 13 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-d = \markup \fret-diagram-with-footer "D MINOR 7" ##f #0 #diagram-size #d-minor-seventh-d-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-d
