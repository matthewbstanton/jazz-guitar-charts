\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-d-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 1 "1" red)
                                   (place-fret 3 3 "2" darkgreen)
                                   (place-fret 2 3 "3")
                                   (place-fret 1 3 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-d-sharp = \markup \fret-diagram-with-footer "D# MAJOR 7" ##f #0 #diagram-size #d-major-seventh-d-sharp-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-d-sharp
