\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-b-flat-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 8 "1" red)
                                  (place-fret 3 10 "4" darkgreen)
                                  (place-fret 2 9 "2")
                                  (place-fret 1 9 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-b-flat = \markup \fret-diagram-with-footer "Bb MINOR 7" ##f #0 #diagram-size #d-minor-seventh-b-flat-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-b-flat
