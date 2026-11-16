\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-g-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 6 "1" red)
                           (place-fret 3 8 "2" darkgreen)
                           (place-fret 2 9 "4" red)
                           (place-fret 1 8 "3" blue))

\header {
  tagline = ##f
}

d-major-g-sharp = \markup \fret-diagram-with-footer "G# MAJOR" ##f #0 #diagram-size #d-major-g-sharp-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-g-sharp
