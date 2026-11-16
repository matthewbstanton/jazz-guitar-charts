\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-d-flat-frets = #'((mute 6)
                                       (place-fret 5 4 "1" red)
                                       (place-fret 4 5 "3")
                                       (place-fret 3 4 "2")
                                       (place-fret 2 5 "4")
                                       (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-d-flat = \markup \fret-diagram-with-footer "Db DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-d-flat-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-d-flat
