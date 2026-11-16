\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-e-sharp-frets = #'((place-fret 6 1 "1" red)
                                   (mute 5)
                                   (place-fret 4 1 "2")
                                   (place-fret 3 1 "3")
                                   (place-fret 2 1 "4" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-e-sharp = \markup \fret-diagram-with-footer "E# MINOR 7" ##f #0 #diagram-size #e-minor-seventh-e-sharp-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-e-sharp
