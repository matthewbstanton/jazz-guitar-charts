\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-d-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 12 "1" red)
                             (place-fret 3 14 "2" darkgreen)
                             (place-fret 2 14 "3")
                             (place-fret 1 14 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-d = \markup \fret-diagram-with-footer "D MAJOR 7" ##f #0 #diagram-size #d-major-seventh-d-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-d
