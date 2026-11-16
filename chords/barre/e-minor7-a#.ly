\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-a-sharp-frets = #'((place-fret 6 6 "1" red)
                                   (mute 5)
                                   (place-fret 4 6 "2")
                                   (place-fret 3 6 "3")
                                   (place-fret 2 6 "4" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-a-sharp = \markup \fret-diagram-with-footer "A# MINOR 7" ##f #0 #diagram-size #e-minor-seventh-a-sharp-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-a-sharp
