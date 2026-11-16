\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-a-sharp-frets = #'((mute 6)
                                        (mute 5)
                                        (place-fret 4 8 "1" red)
                                        (place-fret 3 9 "2")
                                        (place-fret 2 9 "3")
                                        (place-fret 1 9 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-a-sharp = \markup \fret-diagram-with-footer "A# DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-a-sharp-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-a-sharp
