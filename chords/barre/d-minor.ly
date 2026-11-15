\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-shaped-minor-chord = #'((mute 6)
                   (mute 5)
                   (place-fret 4 12 "1" red)
                   (place-fret 3 14 "3" darkgreen)
                   (place-fret 2 15 "4" red)
                   (place-fret 1 13 "2"))

\header {
  tagline = ##f
}

d-minor = \markup \fret-diagram-with-footer "MINOR" ##t #1 #diagram-size #d-shaped-minor-chord #'("" "" "R" "5" "R" "b3")

\standalone \d-minor
