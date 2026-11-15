\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-a-frets = #'((place-fret 6 5 "1" red)
                     (place-fret 5 7 "3" darkgreen)
                     (place-fret 4 7 "4" red)
                     (place-fret 3 6 "2" blue)
                     (place-fret 2 5 "1" darkgreen)
                     (place-fret 1 5 "1" red))

\header {
  tagline = ##f
}

e-major-a = \markup \fret-diagram-with-footer "A MAJOR" ##f #0 #diagram-size #e-major-a-frets #'("R" "5" "R" "3" "5" "R")

\standalone \e-major-a
