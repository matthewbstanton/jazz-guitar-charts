\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-shaped-chord = #'((mute 6)
                   (mute 5)
                   (place-fret 4 12 "1" red)
                   (place-fret 3 14 "2" darkgreen)
                   (place-fret 2 15 "4" red)
                   (place-fret 1 14 "3" blue))

\header {
  tagline = ##f
}

d-major = \markup \fret-diagram-with-footer "MAJOR" ##t #1 #diagram-size #d-shaped-chord #'("" "" "R" "5" "R" "3")

\standalone \d-major
