\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-f-flat-frets = #'((place-fret 6 12 "1" red)
                                  (mute 5)
                                  (place-fret 4 12 "2")
                                  (place-fret 3 12 "3")
                                  (place-fret 2 12 "4" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-f-flat = \markup \fret-diagram-with-footer "Fb MINOR 7" ##f #0 #diagram-size #e-minor-seventh-f-flat-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-f-flat
