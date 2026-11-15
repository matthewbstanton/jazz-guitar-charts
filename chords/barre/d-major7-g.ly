\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-g-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 5 "1" red)
                             (place-fret 3 7 "2" darkgreen)
                             (place-fret 2 7 "3")
                             (place-fret 1 7 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-g = \markup \fret-diagram-with-footer "G MAJOR 7" ##f #0 #diagram-size #d-major-seventh-g-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-g
