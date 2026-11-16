\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-a-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 8 "1" red)
                                   (place-fret 3 10 "2" darkgreen)
                                   (place-fret 2 10 "3")
                                   (place-fret 1 10 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-a-sharp = \markup \fret-diagram-with-footer "A# MAJOR 7" ##f #0 #diagram-size #d-major-seventh-a-sharp-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-a-sharp
