\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-e-sharp-frets = #'((mute 6)
                                        (place-fret 5 8 "1" red)
                                        (place-fret 4 9 "3")
                                        (place-fret 3 8 "2")
                                        (place-fret 2 9 "4")
                                        (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-e-sharp = \markup \fret-diagram-with-footer "E# DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-e-sharp-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-e-sharp
