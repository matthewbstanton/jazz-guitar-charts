\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-c-flat-frets = #'((mute 6)
                                       (place-fret 5 2 "1" red)
                                       (place-fret 4 3 "3")
                                       (place-fret 3 2 "2")
                                       (place-fret 2 3 "4")
                                       (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-c-flat = \markup \fret-diagram-with-footer "Cb DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-c-flat-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-c-flat
