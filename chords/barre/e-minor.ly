\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-shaped-minor-chord = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 14 "4" red)
                   (place-fret 3 12 "1")
                   (place-fret 2 12 "1" darkgreen)
                   (mute 1))

\header {
  tagline = ##f
}

e-minor = \markup \fret-diagram-with-footer "MINOR" ##t #1 #diagram-size #e-shaped-minor-chord #'("R" "" "R" "b3" "5" "")

\standalone \e-minor
