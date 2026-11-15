\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-e-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 2 "1" red)
                             (place-fret 3 4 "4" darkgreen)
                             (place-fret 2 3 "2")
                             (place-fret 1 3 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-e = \markup \fret-diagram-with-footer "E MINOR 7" ##f #0 #diagram-size #d-minor-seventh-e-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-e
