\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-b-sharp-frets = #'((place-fret 6 8 "1" red)
                           (place-fret 5 10 "3" darkgreen)
                           (place-fret 4 10 "4" red)
                           (place-fret 3 8 "1")
                           (place-fret 2 8 "1" darkgreen)
                           (place-fret 1 8 "1" red))

\header {
  tagline = ##f
}

e-minor-b-sharp = \markup \fret-diagram-with-footer "B# MINOR" ##f #0 #diagram-size #e-minor-b-sharp-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-b-sharp
