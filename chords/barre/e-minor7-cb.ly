\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-c-flat-frets = #'((place-fret 6 7 "1" red)
                                  (mute 5)
                                  (place-fret 4 7 "2")
                                  (place-fret 3 7 "3")
                                  (place-fret 2 7 "4" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-c-flat = \markup \fret-diagram-with-footer "Cb MINOR 7" ##f #0 #diagram-size #e-minor-seventh-c-flat-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-c-flat
