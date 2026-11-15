\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-d-frets = #'((mute 6)
                                  (place-fret 5 5 "1" red)
                                  (place-fret 4 6 "3")
                                  (place-fret 3 5 "2")
                                  (place-fret 2 6 "4")
                                  (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-d = \markup \fret-diagram-with-footer "D DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-d-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-d
