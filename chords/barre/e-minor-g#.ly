\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-g-sharp-frets = #'((place-fret 6 4 "1" red)
                           (place-fret 5 6 "3" darkgreen)
                           (place-fret 4 6 "4" red)
                           (place-fret 3 4 "1")
                           (place-fret 2 4 "1" darkgreen)
                           (place-fret 1 4 "1" red))

\header {
  tagline = ##f
}

e-minor-g-sharp = \markup \fret-diagram-with-footer "G# MINOR" ##f #0 #diagram-size #e-minor-g-sharp-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-g-sharp
