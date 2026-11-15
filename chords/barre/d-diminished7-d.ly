\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-d-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 12 "1" red)
                                  (place-fret 3 13 "2")
                                  (place-fret 2 13 "3")
                                  (place-fret 1 13 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-d = \markup \fret-diagram-with-footer "D DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-d-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-d
