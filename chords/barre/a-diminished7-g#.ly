\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-g-sharp-frets = #'((mute 6)
                                        (place-fret 5 11 "1" red)
                                        (place-fret 4 12 "3")
                                        (place-fret 3 11 "2")
                                        (place-fret 2 12 "4")
                                        (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-g-sharp = \markup \fret-diagram-with-footer "G# DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-g-sharp-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-g-sharp
