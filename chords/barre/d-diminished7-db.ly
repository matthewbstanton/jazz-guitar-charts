\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-d-flat-frets = #'((mute 6)
                                       (mute 5)
                                       (place-fret 4 11 "1" red)
                                       (place-fret 3 12 "2")
                                       (place-fret 2 12 "3")
                                       (place-fret 1 12 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-d-flat = \markup \fret-diagram-with-footer "Db DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-d-flat-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-d-flat
