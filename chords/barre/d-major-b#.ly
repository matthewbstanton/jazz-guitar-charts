\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-b-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 10 "1" red)
                           (place-fret 3 12 "2" darkgreen)
                           (place-fret 2 13 "4" red)
                           (place-fret 1 12 "3" blue))

\header {
  tagline = ##f
}

d-major-b-sharp = \markup \fret-diagram-with-footer "B# MAJOR" ##f #0 #diagram-size #d-major-b-sharp-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-b-sharp
