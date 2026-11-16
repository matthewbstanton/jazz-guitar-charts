\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-c-sharp-frets = #'((place-fret 6 9 "1" red)
                           (place-fret 5 11 "3" darkgreen)
                           (place-fret 4 11 "4" red)
                           (place-fret 3 10 "2" blue)
                           (place-fret 2 9 "1" darkgreen)
                           (place-fret 1 9 "1" red))

\header {
  tagline = ##f
}

e-major-c-sharp = \markup \fret-diagram-with-footer "C# MAJOR" ##f #0 #diagram-size #e-major-c-sharp-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-c-sharp
