\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-g-frets = #'((place-fret 6 3 "1" red)
                     (place-fret 5 5 "3" darkgreen)
                     (place-fret 4 5 "4" red)
                     (place-fret 3 3 "1")
                     (place-fret 2 3 "1" darkgreen)
                     (place-fret 1 3 "1" red))

\header {
  tagline = ##f
}

e-minor-g = \markup \fret-diagram-with-footer "G MINOR" ##f #0 #diagram-size #e-minor-g-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-g
