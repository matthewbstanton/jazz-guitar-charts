\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-d-sharp-frets = #'((mute 6)
                                        (place-fret 5 6 "1" red)
                                        (place-fret 4 7 "3")
                                        (place-fret 3 6 "2")
                                        (place-fret 2 7 "4")
                                        (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-d-sharp = \markup \fret-diagram-with-footer "D# DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-d-sharp-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-d-sharp
