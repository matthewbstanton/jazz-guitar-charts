\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-a-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 8 "1" red)
                           (place-fret 3 10 "2" darkgreen)
                           (place-fret 2 11 "4" red)
                           (place-fret 1 10 "3" blue))

\header {
  tagline = ##f
}

d-major-a-sharp = \markup \fret-diagram-with-footer "A# MAJOR" ##f #0 #diagram-size #d-major-a-sharp-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-a-sharp
