\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-c-frets = #'((mute 6)
                                  (place-fret 5 3 "1" red)
                                  (place-fret 4 4 "3")
                                  (place-fret 3 3 "2")
                                  (place-fret 2 4 "4")
                                  (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-c = \markup \fret-diagram-with-footer "C DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-c-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-c
