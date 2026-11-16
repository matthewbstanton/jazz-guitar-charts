\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-f-sharp-frets = #'((mute 6)
                                        (mute 5)
                                        (place-fret 4 4 "1" red)
                                        (place-fret 3 5 "2")
                                        (place-fret 2 5 "3")
                                        (place-fret 1 5 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-f-sharp = \markup \fret-diagram-with-footer "F# DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-f-sharp-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-f-sharp
