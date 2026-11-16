\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-d-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 1 "1" red)
                                   (place-fret 3 3 "4" darkgreen)
                                   (place-fret 2 2 "2")
                                   (place-fret 1 2 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-d-sharp = \markup \fret-diagram-with-footer "D# MINOR 7" ##f #0 #diagram-size #d-minor-seventh-d-sharp-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-d-sharp
