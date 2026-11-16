\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-e-sharp-frets = #'((place-fret 6 1 "1" red)
                           (place-fret 5 3 "3" darkgreen)
                           (place-fret 4 3 "4" red)
                           (place-fret 3 1 "1")
                           (place-fret 2 1 "1" darkgreen)
                           (place-fret 1 1 "1" red))

\header {
  tagline = ##f
}

e-minor-e-sharp = \markup \fret-diagram-with-footer "E# MINOR" ##f #0 #diagram-size #e-minor-e-sharp-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-e-sharp
