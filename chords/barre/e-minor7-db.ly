\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-d-flat-frets = #'((place-fret 6 9 "1" red)
                                  (mute 5)
                                  (place-fret 4 9 "2")
                                  (place-fret 3 9 "3")
                                  (place-fret 2 9 "4" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-d-flat = \markup \fret-diagram-with-footer "Db MINOR 7" ##f #0 #diagram-size #e-minor-seventh-d-flat-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-d-flat
