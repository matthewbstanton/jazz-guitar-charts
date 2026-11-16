\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-d-sharp-frets = #'((place-fret 6 11 "1" red)
                           (place-fret 5 13 "3" darkgreen)
                           (place-fret 4 13 "4" red)
                           (place-fret 3 11 "1")
                           (place-fret 2 11 "1" darkgreen)
                           (place-fret 1 11 "1" red))

\header {
  tagline = ##f
}

e-minor-d-sharp = \markup \fret-diagram-with-footer "D# MINOR" ##f #0 #diagram-size #e-minor-d-sharp-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-d-sharp
