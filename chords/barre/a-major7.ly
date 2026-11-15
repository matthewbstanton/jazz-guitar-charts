\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-major-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3" darkgreen)
                   (place-fret 3 9 "2")
                   (place-fret 2 10 "4" blue)
                   (place-fret 1 8 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh = \markup \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-fifth-root #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh
