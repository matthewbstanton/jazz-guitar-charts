\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-g-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 6 "1" red)
                                   (place-fret 3 8 "4" darkgreen)
                                   (place-fret 2 7 "2")
                                   (place-fret 1 7 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-g-sharp = \markup \fret-diagram-with-footer "G# MINOR 7" ##f #0 #diagram-size #d-minor-seventh-g-sharp-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-g-sharp
