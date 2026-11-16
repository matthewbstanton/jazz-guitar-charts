\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-g-sharp-frets = #'((place-fret 6 4 "1" red)
                           (place-fret 5 6 "3" darkgreen)
                           (place-fret 4 6 "4" red)
                           (place-fret 3 5 "2" blue)
                           (place-fret 2 4 "1" darkgreen)
                           (place-fret 1 4 "1" red))

\header {
  tagline = ##f
}

e-major-g-sharp = \markup \fret-diagram-with-footer "G# MAJOR" ##f #0 #diagram-size #e-major-g-sharp-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-g-sharp
