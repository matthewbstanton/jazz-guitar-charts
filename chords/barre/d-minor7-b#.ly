\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-b-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 10 "1" red)
                                   (place-fret 3 12 "4" darkgreen)
                                   (place-fret 2 11 "2")
                                   (place-fret 1 11 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-b-sharp = \markup \fret-diagram-with-footer "B# MINOR 7" ##f #0 #diagram-size #d-minor-seventh-b-sharp-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-b-sharp
