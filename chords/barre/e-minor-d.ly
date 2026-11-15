\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-d-frets = #'((place-fret 6 10 "1" red)
                     (place-fret 5 12 "3" darkgreen)
                     (place-fret 4 12 "4" red)
                     (place-fret 3 10 "1")
                     (place-fret 2 10 "1" darkgreen)
                     (place-fret 1 10 "1" red))

\header {
  tagline = ##f
}

e-minor-d = \markup \fret-diagram-with-footer "D MINOR" ##f #0 #diagram-size #e-minor-d-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-d
