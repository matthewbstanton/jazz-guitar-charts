\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-e-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 3 "1" red)
                                   (place-fret 3 5 "2" darkgreen)
                                   (place-fret 2 5 "3")
                                   (place-fret 1 5 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-e-sharp = \markup \fret-diagram-with-footer "E# MAJOR 7" ##f #0 #diagram-size #d-major-seventh-e-sharp-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-e-sharp
