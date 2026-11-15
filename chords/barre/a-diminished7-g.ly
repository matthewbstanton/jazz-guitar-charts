\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-g-frets = #'((mute 6)
                                  (place-fret 5 10 "1" red)
                                  (place-fret 4 11 "3")
                                  (place-fret 3 10 "2")
                                  (place-fret 2 11 "4")
                                  (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-g = \markup \fret-diagram-with-footer "G DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-g-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-g
