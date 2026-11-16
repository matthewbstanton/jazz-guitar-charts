\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-f-flat-frets = #'((place-fret 6 12 "1" red)
                          (place-fret 5 14 "3" darkgreen)
                          (place-fret 4 14 "4" red)
                          (place-fret 3 12 "1")
                          (place-fret 2 12 "1" darkgreen)
                          (place-fret 1 12 "1" red))

\header {
  tagline = ##f
}

e-minor-f-flat = \markup \fret-diagram-with-footer "Fb MINOR" ##f #0 #diagram-size #e-minor-f-flat-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-f-flat
