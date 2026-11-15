\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-f-frets = #'((place-fret 6 1 "1" red)
                     (place-fret 5 3 "3" darkgreen)
                     (place-fret 4 3 "4" red)
                     (place-fret 3 1 "1")
                     (place-fret 2 1 "1" darkgreen)
                     (place-fret 1 1 "1" red))

\header {
  tagline = ##f
}

e-minor-f = \markup \fret-diagram-with-footer "F MINOR" ##f #0 #diagram-size #e-minor-f-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-f
