\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-diminished-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 16 "2")
                   (place-fret 2 16 "3")
                   (place-fret 1 16 "4"))

\header {
  tagline = ##f
}

d-diminished-seventh = \markup \fret-diagram-with-footer "DIMINISHED 7" ##t #1 #diagram-size #f-diminished-seventh-fourth-root #'("" "" "R" "b5" "b7" "b3")

\standalone \d-diminished-seventh
