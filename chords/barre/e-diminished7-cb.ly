\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-diminished-seventh-c-flat-frets = #'((place-fret 6 7 "1" red)
                                       (mute 5)
                                       (place-fret 4 7 "3")
                                       (place-fret 3 7 "4")
                                       (place-fret 2 6 "2")
                                       (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh-c-flat = \markup \fret-diagram-with-footer "Cb DIMINISHED 7" ##f #0 #diagram-size #e-diminished-seventh-c-flat-frets #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh-c-flat
