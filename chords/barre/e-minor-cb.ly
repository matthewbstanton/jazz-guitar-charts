\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-c-flat-frets = #'((place-fret 6 7 "1" red)
                          (place-fret 5 9 "3" darkgreen)
                          (place-fret 4 9 "4" red)
                          (place-fret 3 7 "1")
                          (place-fret 2 7 "1" darkgreen)
                          (place-fret 1 7 "1" red))

\header {
  tagline = ##f
}

e-minor-c-flat = \markup \fret-diagram-with-footer "Cb MINOR" ##f #0 #diagram-size #e-minor-c-flat-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-c-flat
