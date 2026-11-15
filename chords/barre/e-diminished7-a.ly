\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-a-frets = #'((place-fret 6 5 "1" red)
                                  (mute 5)
                                  (place-fret 4 5 "3")
                                  (place-fret 3 5 "4")
                                  (place-fret 2 4 "2")
                                  (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-a = \markup \fret-diagram-with-footer "A DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-a-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-a
