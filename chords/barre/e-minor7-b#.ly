\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-b-sharp-frets = #'((place-fret 6 8 "1" red)
                                   (mute 5)
                                   (place-fret 4 8 "2")
                                   (place-fret 3 8 "3")
                                   (place-fret 2 8 "4" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-b-sharp = \markup \fret-diagram-with-footer "B# MINOR 7" ##f #0 #diagram-size #e-minor-seventh-b-sharp-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-b-sharp
