\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-a-flat-frets = #'((mute 6)
                                       (mute 5)
                                       (place-fret 4 6 "1" red)
                                       (place-fret 3 7 "2")
                                       (place-fret 2 7 "3")
                                       (place-fret 1 7 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-a-flat = \markup \fret-diagram-with-footer "Ab DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-a-flat-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-a-flat
