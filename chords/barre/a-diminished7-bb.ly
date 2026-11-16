\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-diminished-seventh-b-flat-frets = #'((mute 6)
                                       (place-fret 5 1 "1" red)
                                       (place-fret 4 2 "3")
                                       (place-fret 3 1 "2")
                                       (place-fret 2 2 "4")
                                       (mute 1))

\header {
  tagline = ##f
}

a-diminished-seventh-b-flat = \markup \fret-diagram-with-footer "Bb DIMINISHED 7" ##f #0 #diagram-size #a-diminished-seventh-b-flat-frets #'("" "R" "b5" "b7" "b3" "")

\standalone \a-diminished-seventh-b-flat
