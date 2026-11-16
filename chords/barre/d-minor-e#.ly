\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-e-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 3 "1" red)
                           (place-fret 3 5 "3" darkgreen)
                           (place-fret 2 6 "4" red)
                           (place-fret 1 4 "2"))

\header {
  tagline = ##f
}

d-minor-e-sharp = \markup \fret-diagram-with-footer "E# MINOR" ##f #0 #diagram-size #d-minor-e-sharp-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-e-sharp
