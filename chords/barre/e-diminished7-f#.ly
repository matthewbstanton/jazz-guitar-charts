\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-f-sharp-frets = #'((place-fret 6 2 "1" red)
                                        (mute 5)
                                        (place-fret 4 2 "3")
                                        (place-fret 3 2 "4")
                                        (place-fret 2 1 "2")
                                        (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-f-sharp = \markup \fret-diagram-with-footer "F# DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-f-sharp-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-f-sharp
