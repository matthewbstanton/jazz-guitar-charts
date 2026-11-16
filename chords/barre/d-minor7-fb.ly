\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-seventh-f-flat-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 2 "1" red)
                                  (place-fret 3 4 "4" darkgreen)
                                  (place-fret 2 3 "2")
                                  (place-fret 1 3 "3"))

\header {
  tagline = ##f
}

d-minor-seventh-f-flat = \markup \fret-diagram-with-footer "Fb MINOR 7" ##f #0 #diagram-size #d-minor-seventh-f-flat-frets #'("" "" "R" "5" "b7" "b3")

\standalone \d-minor-seventh-f-flat
