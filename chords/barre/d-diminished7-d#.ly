\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-d-sharp-frets = #'((mute 6)
                                        (mute 5)
                                        (place-fret 4 1 "1" red)
                                        (place-fret 3 2 "2")
                                        (place-fret 2 2 "3")
                                        (place-fret 1 2 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-d-sharp = \markup \fret-diagram-with-footer "D# DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-d-sharp-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-d-sharp
