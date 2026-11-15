\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-g-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 5 "1" red)
                                  (place-fret 3 6 "2")
                                  (place-fret 2 6 "3")
                                  (place-fret 1 6 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-g = \markup \fret-diagram-with-footer "G DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-g-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-g
