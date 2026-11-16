\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-f-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 4 "1" red)
                                   (place-fret 3 6 "4" darkgreen)
                                   (place-fret 2 5 "2")
                                   (place-fret 1 5 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-f-sharp = \markup \fret-diagram-with-footer "F# MINOR 7" ##f #0 #diagram-size #d-minor-seventh-f-sharp-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-f-sharp
