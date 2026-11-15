\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-c-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 10 "1" red)
                                  (place-fret 3 11 "2")
                                  (place-fret 2 11 "3")
                                  (place-fret 1 11 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-c = \markup \fret-diagram-with-footer "C DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-c-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-c
