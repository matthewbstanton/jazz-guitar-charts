\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-g-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 5 "1" red)
                     (place-fret 3 7 "2" darkgreen)
                     (place-fret 2 8 "4" red)
                     (place-fret 1 7 "3" blue))

\header {
  tagline = ##f
}

d-major-g = \markup \fret-diagram-with-footer "G MAJOR" ##f #0 #diagram-size #d-major-g-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-g
