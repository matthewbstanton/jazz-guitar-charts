\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-d-flat-frets = #'((place-fret 6 9 "1" red)
                          (place-fret 5 11 "3" darkgreen)
                          (place-fret 4 11 "4" red)
                          (place-fret 3 9 "1")
                          (place-fret 2 9 "1" darkgreen)
                          (place-fret 1 9 "1" red))

\header {
  tagline = ##f
}

e-minor-d-flat = \markup \fret-diagram-with-footer "Db MINOR" ##f #0 #diagram-size #e-minor-d-flat-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-d-flat
