\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-a-frets = #'((mute 6)
                     (mute 5)
                     (place-fret 4 7 "1" red)
                     (place-fret 3 9 "2" darkgreen)
                     (place-fret 2 10 "4" red)
                     (place-fret 1 9 "3" blue))

\header {
  tagline = ##f
}

d-major-a = \markup \fret-diagram-with-footer "A MAJOR" ##f #0 #diagram-size #d-major-a-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-a
