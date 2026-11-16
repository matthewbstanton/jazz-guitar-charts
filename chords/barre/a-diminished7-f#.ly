\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-f-sharp-frets = #'((mute 6)
                                        (place-fret 5 9 "1" red)
                                        (place-fret 4 10 "3")
                                        (place-fret 3 9 "2")
                                        (place-fret 2 10 "4")
                                        (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-f-sharp = \markup \fret-diagram-with-footer "F# DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-f-sharp-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-f-sharp
