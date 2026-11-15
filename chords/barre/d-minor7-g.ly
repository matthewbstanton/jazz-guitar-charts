\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-g-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 5 "1" red)
                             (place-fret 3 7 "4" darkgreen)
                             (place-fret 2 6 "2")
                             (place-fret 1 6 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-g = \markup \fret-diagram-with-footer "G MINOR 7" ##f #0 #diagram-size #d-minor-seventh-g-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-g
