\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-c-sharp-frets = #'((mute 6)
                           (mute 5)
                           (place-fret 4 11 "1" red)
                           (place-fret 3 13 "2" darkgreen)
                           (place-fret 2 14 "4" red)
                           (place-fret 1 13 "3" blue))

\header {
  tagline = ##f
}

d-major-c-sharp = \markup \fret-diagram-with-footer "C# MAJOR" ##f #0 #diagram-size #d-major-c-sharp-frets #'("" "" "R" "5" "R" "3")

\standalone \d-major-c-sharp
