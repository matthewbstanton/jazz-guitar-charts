\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-f-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 3 "1" red)
                                  (place-fret 3 4 "2")
                                  (place-fret 2 4 "3")
                                  (place-fret 1 4 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-f = \markup \fret-diagram-with-footer "F DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-f-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-f
