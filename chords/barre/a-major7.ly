\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-major-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3")
                   (place-fret 3 9 "2")
                   (place-fret 2 10 "4")
                   (place-fret 1 8 "1"))

\header {
  tagline = ##f
}

a-major-seventh = \markup \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-fifth-root #'("" "R" "p5" "Δ7" "Δ3" "p5")

\standalone \a-major-seventh
