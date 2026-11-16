\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-b-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 10 "1" red)
                           (place-fret 3 12 "3" darkgreen)
                           (place-fret 2 13 "4" red)
                           (place-fret 1 11 "2"))

\header {
  tagline = ##f
}

d-minor-b-sharp = \markup \fret-diagram-with-footer "B# MINOR" ##f #0 #diagram-size #d-minor-b-sharp-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-b-sharp
