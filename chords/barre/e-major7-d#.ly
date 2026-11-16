\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-d-sharp-frets = #'((place-fret 6 11 "1" red)
                                   (mute 5)
                                   (place-fret 4 12 "3")
                                   (place-fret 3 12 "4" blue)
                                   (place-fret 2 11 "2" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-d-sharp = \markup \fret-diagram-with-footer "D# MAJOR 7" ##f #0 #diagram-size #e-major-seventh-d-sharp-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-d-sharp
