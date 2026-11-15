\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-minor-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3")
                   (place-fret 3 8 "1")
                   (place-fret 2 9 "2")
                   (place-fret 1 8 "1"))

\header {
  tagline = ##f
}

a-minor-seventh = \markup \fret-diagram-with-footer "MINOR 7" ##t #1 #diagram-size #f-minor-seventh-fifth-root #'("" "R" "p5" "b7" "b3" "p5")

\standalone \a-minor-seventh
