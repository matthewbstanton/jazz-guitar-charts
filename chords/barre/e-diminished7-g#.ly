\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-g-sharp-frets = #'((place-fret 6 4 "1" red)
                                        (mute 5)
                                        (place-fret 4 4 "3")
                                        (place-fret 3 4 "4")
                                        (place-fret 2 3 "2")
                                        (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-g-sharp = \markup \fret-diagram-with-footer "G# DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-g-sharp-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-g-sharp
