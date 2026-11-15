\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-a-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 7 "1" red)
                             (place-fret 3 9 "4" darkgreen)
                             (place-fret 2 8 "2")
                             (place-fret 1 8 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-a = \markup \fret-diagram-with-footer "A MINOR 7" ##f #0 #diagram-size #d-minor-seventh-a-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-a
