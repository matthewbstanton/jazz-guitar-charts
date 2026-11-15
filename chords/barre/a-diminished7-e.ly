\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-e-frets = #'((mute 6)
                                  (place-fret 5 7 "1" red)
                                  (place-fret 4 8 "3")
                                  (place-fret 3 7 "2")
                                  (place-fret 2 8 "4")
                                  (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-e = \markup \fret-diagram-with-footer "E DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-e-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-e
