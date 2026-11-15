\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-c-frets = #'((place-fret 6 8 "1" red)
                                  (mute 5)
                                  (place-fret 4 8 "3")
                                  (place-fret 3 8 "4")
                                  (place-fret 2 7 "2")
                                  (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-c = \markup \fret-diagram-with-footer "C DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-c-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-c
