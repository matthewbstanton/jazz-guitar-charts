\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-g-sharp-frets = #'((place-fret 6 4 "1" red)
                                   (mute 5)
                                   (place-fret 4 5 "3")
                                   (place-fret 3 5 "4" blue)
                                   (place-fret 2 4 "2" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-g-sharp = \markup \fret-diagram-with-footer "G# MAJOR 7" ##f #0 #diagram-size #e-major-seventh-g-sharp-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-g-sharp
