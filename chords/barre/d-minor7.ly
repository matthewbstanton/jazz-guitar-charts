\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-minor-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "4")
                   (place-fret 2 16 "2")
                   (place-fret 1 16 "3"))

\header {
  tagline = ##f
}

d-minor-seventh = \markup \fret-diagram-with-footer "MINOR 7" ##t #1 #diagram-size #f-minor-seventh-fourth-root #'("" "" "R" "p5" "b7" "b3")

\standalone \d-minor-seventh
