\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-f-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 3 "1" red)
                     (place-fret 3 5 "2" darkgreen)
                     (place-fret 2 6 "4" red)
                     (place-fret 1 5 "3" blue))

\header {
  tagline = ##f
}

d-major-f = \markup \fret-diagram-with-footer "F MAJOR" ##f #0 #diagram-size #d-major-f-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-f
