\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-e-sharp-frets = #'((place-fret 6 13 "1" red)
                                        (mute 5)
                                        (place-fret 4 13 "3")
                                        (place-fret 3 13 "4")
                                        (place-fret 2 12 "2")
                                        (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-e-sharp = \markup \fret-diagram-with-footer "E# DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-e-sharp-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-e-sharp
