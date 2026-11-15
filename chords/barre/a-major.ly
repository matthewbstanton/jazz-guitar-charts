\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-shaped-chord = #'((mute 6)
                   (place-fret 5 12 "1" red)
                   (place-fret 4 14 "2" darkgreen)
                   (place-fret 3 14 "2" red)
                   (place-fret 2 14 "2" blue)
                   (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

\markup \fret-diagram-with-footer "Major" ##t #1 #4 #a-shaped-chord #'("" "R" "p5" "R" "Δ3" "p5")
