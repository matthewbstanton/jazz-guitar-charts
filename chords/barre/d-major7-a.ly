\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-a-frets = #'((mute 6)
                             (mute 5)
                             (place-fret 4 7 "1" red)
                             (place-fret 3 9 "2" darkgreen)
                             (place-fret 2 9 "3")
                             (place-fret 1 9 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-a = \markup \fret-diagram-with-footer "A MAJOR 7" ##f #0 #diagram-size #d-major-seventh-a-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-a
