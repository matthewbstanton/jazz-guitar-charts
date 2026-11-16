\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-g-flat-frets = #'((place-fret 6 2 "1" red)
                          (place-fret 5 4 "3" darkgreen)
                          (place-fret 4 4 "4" red)
                          (place-fret 3 2 "1")
                          (place-fret 2 2 "1" darkgreen)
                          (place-fret 1 2 "1" red))

\header {
  tagline = ##f
}

e-minor-g-flat = \markup \fret-diagram-with-footer "Gb MINOR" ##f #0 #diagram-size #e-minor-g-flat-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-g-flat
