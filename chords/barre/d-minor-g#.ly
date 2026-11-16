\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-g-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 6 "1" red)
                           (place-fret 3 8 "3" darkgreen)
                           (place-fret 2 9 "4" red)
                           (place-fret 1 7 "2"))

\header {
  tagline = ##f
}

d-minor-g-sharp = \markup \fret-diagram-with-footer "G# MINOR" ##f #0 #diagram-size #d-minor-g-sharp-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-g-sharp
