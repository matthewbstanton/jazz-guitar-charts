\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-b-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 9 "1" red)
                             (place-fret 3 11 "2" darkgreen)
                             (place-fret 2 11 "3")
                             (place-fret 1 11 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-b = \markup \fret-diagram-with-footer "B MAJOR 7" ##f #0 #diagram-size #d-major-seventh-b-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-b
