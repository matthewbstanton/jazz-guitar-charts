\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-a-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 7 "1" red)
                     (place-fret 3 9 "3" darkgreen)
                     (place-fret 2 10 "4" red)
                     (place-fret 1 8 "2"))

\header {
  tagline = ##f
}

d-minor-a = \markup \fret-diagram-with-footer "A MINOR" ##f #0 #diagram-size #d-minor-a-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-a
