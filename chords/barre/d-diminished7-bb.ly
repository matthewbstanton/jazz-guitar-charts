\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-diminished-seventh-b-flat-frets = #'((mute 6)
                                       (mute 5)
                                       (place-fret 4 8 "1" red)
                                       (place-fret 3 9 "2")
                                       (place-fret 2 9 "3")
                                       (place-fret 1 9 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh-b-flat = \markup \fret-diagram-with-footer "Bb DIMINISHED 7" ##f #0 #diagram-size #d-diminished-seventh-b-flat-frets #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh-b-flat
