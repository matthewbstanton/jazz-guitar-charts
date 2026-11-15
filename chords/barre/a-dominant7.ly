\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-dominant-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3")
                   (place-fret 3 8 "1")
                   (place-fret 2 10 "4")
                   (place-fret 1 8 "1"))

\header {
  tagline = ##f
}

a-dominant-seventh = \markup \fret-diagram-with-footer "DOMINANT 7" ##t #1 #diagram-size #f-dominant-seventh-fifth-root #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh
