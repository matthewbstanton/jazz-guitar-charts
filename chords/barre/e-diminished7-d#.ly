\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-d-sharp-frets = #'((place-fret 6 11 "1" red)
                                        (mute 5)
                                        (place-fret 4 11 "3")
                                        (place-fret 3 11 "4")
                                        (place-fret 2 10 "2")
                                        (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-d-sharp = \markup \fret-diagram-with-footer "D# DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-d-sharp-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-d-sharp
