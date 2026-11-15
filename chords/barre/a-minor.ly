\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-shaped-minor-chord = #'((mute 6)
                   (place-fret 5 12 "1" red)
                   (place-fret 4 14 "3" darkgreen)
                   (place-fret 3 14 "4" red)
                   (place-fret 2 13 "2")
                   (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

\markup \fret-diagram-with-footer "Minor" ##t #1 #4 #a-shaped-minor-chord #'("" "R" "p5" "R" "b3" "p5")
