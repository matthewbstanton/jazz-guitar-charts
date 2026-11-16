\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-f-flat-frets = #'((mute 6)
                                       (mute 5)
                                       (place-fret 4 2 "1" red)
                                       (place-fret 3 3 "2")
                                       (place-fret 2 3 "3")
                                       (place-fret 1 3 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-f-flat = \markup \fret-diagram-with-footer "Fb DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-f-flat-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-f-flat
