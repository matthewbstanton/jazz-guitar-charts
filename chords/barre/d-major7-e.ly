\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-e-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 2 "1" red)
                             (place-fret 3 4 "2" darkgreen)
                             (place-fret 2 4 "3")
                             (place-fret 1 4 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-e = \markup \fret-diagram-with-footer "E MAJOR 7" ##f #0 #diagram-size #d-major-seventh-e-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-e
