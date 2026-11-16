\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-a-flat-frets = #'((place-fret 6 4 "1" red)
                          (place-fret 5 6 "3" darkgreen)
                          (place-fret 4 6 "4" red)
                          (place-fret 3 4 "1")
                          (place-fret 2 4 "1" darkgreen)
                          (place-fret 1 4 "1" red))

\header {
  tagline = ##f
}

e-minor-a-flat = \markup \fret-diagram-with-footer "Ab MINOR" ##f #0 #diagram-size #e-minor-a-flat-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-a-flat
