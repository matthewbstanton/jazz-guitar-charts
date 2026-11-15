\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-d-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 12 "1" red)
                     (place-fret 3 14 "3" darkgreen)
                     (place-fret 2 15 "4" red)
                     (place-fret 1 13 "2"))

\header {
  tagline = ##f
}

d-minor-d = \markup \fret-diagram-with-footer "D MINOR" ##f #0 #diagram-size #d-minor-d-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-d
