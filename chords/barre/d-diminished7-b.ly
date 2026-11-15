\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-b-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 9 "1" red)
                                  (place-fret 3 10 "2")
                                  (place-fret 2 10 "3")
                                  (place-fret 1 10 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-b = \markup \fret-diagram-with-footer "B DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-b-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-b
