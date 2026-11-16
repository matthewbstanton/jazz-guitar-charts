\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-e-open-frets = #'((open 6)
                          (place-fret 5 2 "2" darkgreen)
                          (place-fret 4 2 "3" red)
                          (open 3)
                          (open 2)
                          (open 1))

\header {
  tagline = ##f
}

e-minor-e-open = \markup \fret-diagram-with-footer "E MINOR" ##f #0 #diagram-size #e-minor-e-open-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-e-open
