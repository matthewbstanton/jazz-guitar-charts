\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-d-sharp-frets = #'((place-fret 6 11 "1" red)
                                   (mute 5)
                                   (place-fret 4 11 "2")
                                   (place-fret 3 11 "3")
                                   (place-fret 2 11 "4" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-d-sharp = \markup \fret-diagram-with-footer "D# MINOR 7" ##f #0 #diagram-size #e-minor-seventh-d-sharp-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-d-sharp
