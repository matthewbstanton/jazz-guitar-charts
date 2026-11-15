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

a-major = \markup \fret-diagram-with-footer "MAJOR" ##t #1 #diagram-size #a-shaped-chord #'("" "R" "5" "R" "3" "5")

\standalone \a-major
