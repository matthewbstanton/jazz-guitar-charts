\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-d-sharp-frets = #'((mute 6)
                           (place-fret 5 6 "1" red)
                           (place-fret 4 8 "2" darkgreen)
                           (place-fret 3 8 "2" red)
                           (place-fret 2 8 "2" blue)
                           (place-fret 1 6 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-d-sharp = \markup \fret-diagram-with-footer "D# MAJOR" ##f #0 #diagram-size #a-major-d-sharp-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-d-sharp
