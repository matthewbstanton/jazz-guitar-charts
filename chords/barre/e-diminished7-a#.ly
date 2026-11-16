\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-a-sharp-frets = #'((place-fret 6 6 "1" red)
                                        (mute 5)
                                        (place-fret 4 6 "3")
                                        (place-fret 3 6 "4")
                                        (place-fret 2 5 "2")
                                        (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-a-sharp = \markup \fret-diagram-with-footer "A# DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-a-sharp-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-a-sharp
