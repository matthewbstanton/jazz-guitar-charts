\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-dominant-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "3")
                   (place-fret 2 16 "2")
                   (place-fret 1 17 "4"))

\header {
  tagline = ##f
}

d-dominant-seventh = \markup \fret-diagram-with-footer "DOMINANT 7" ##t #1 #diagram-size #f-dominant-seventh-fourth-root #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh
