\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-g-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 6 "1" red)
                                   (place-fret 3 8 "2" darkgreen)
                                   (place-fret 2 8 "3")
                                   (place-fret 1 8 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-g-sharp = \markup \fret-diagram-with-footer "G# MAJOR 7" ##f #0 #diagram-size #d-major-seventh-g-sharp-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-g-sharp
