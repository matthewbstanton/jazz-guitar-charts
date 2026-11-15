\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-major-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "2")
                   (place-fret 2 17 "3")
                   (place-fret 1 17 "4"))

\header {
  tagline = ##f
}

d-major-seventh = \markup \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-fourth-root #'("" "" "R" "p5" "Δ7" "Δ3")

\standalone \d-major-seventh
