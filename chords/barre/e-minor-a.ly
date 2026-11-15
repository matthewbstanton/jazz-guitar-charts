\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-a-frets = #'((place-fret 6 5 "1" red)
                     (place-fret 5 7 "3" darkgreen)
                     (place-fret 4 7 "4" red)
                     (place-fret 3 5 "1")
                     (place-fret 2 5 "1" darkgreen)
                     (place-fret 1 5 "1" red))

\header {
  tagline = ##f
}

e-minor-a = \markup \fret-diagram-with-footer "A MINOR" ##f #0 #diagram-size #e-minor-a-frets #'("R" "5" "R" "b3" "5" "R")

\standalone \e-minor-a
