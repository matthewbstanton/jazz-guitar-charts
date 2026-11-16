\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-a-sharp-frets = #'((mute 6)
                                        (place-fret 5 1 "1" red)
                                        (place-fret 4 2 "3")
                                        (place-fret 3 1 "2")
                                        (place-fret 2 2 "4")
                                        (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-a-sharp = \markup \fret-diagram-with-footer "A# DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-a-sharp-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-a-sharp
