\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-e-sharp-frets = #'((place-fret 6 1 "1" red)
                                   (mute 5)
                                   (place-fret 4 2 "3")
                                   (place-fret 3 2 "4" blue)
                                   (place-fret 2 1 "2" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-e-sharp = \markup \fret-diagram-with-footer "E# MAJOR 7" ##f #0 #diagram-size #e-major-seventh-e-sharp-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-e-sharp
