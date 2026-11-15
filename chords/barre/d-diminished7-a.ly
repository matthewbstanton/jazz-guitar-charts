\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-a-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 7 "1" red)
                                  (place-fret 3 8 "2")
                                  (place-fret 2 8 "3")
                                  (place-fret 1 8 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-a = \markup \fret-diagram-with-footer "A DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-a-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-a
