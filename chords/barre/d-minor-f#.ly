\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-f-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 4 "1" red)
                           (place-fret 3 6 "3" darkgreen)
                           (place-fret 2 7 "4" red)
                           (place-fret 1 5 "2"))

\header {
  tagline = ##f
}

d-minor-f-sharp = \markup \fret-diagram-with-footer "F# MINOR" ##f #0 #diagram-size #d-minor-f-sharp-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-f-sharp
