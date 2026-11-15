\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-shaped-chord = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 14 "4" red)
                   (place-fret 3 13 "2" blue)
                   (place-fret 2 12 "1" darkgreen)
                   (mute 1))

\header {
  tagline = ##f
}

\markup \fret-diagram-with-footer "Major" ##t #1 #4 #e-shaped-chord #'("R" "" "R" "3" "5" "")
