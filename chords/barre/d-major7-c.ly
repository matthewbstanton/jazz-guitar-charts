\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-c-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 10 "1" red)
                             (place-fret 3 12 "2" darkgreen)
                             (place-fret 2 12 "3")
                             (place-fret 1 12 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-c = \markup \fret-diagram-with-footer "C MAJOR 7" ##f #0 #diagram-size #d-major-seventh-c-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-c
