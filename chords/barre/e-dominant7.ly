\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-dominant-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 12 "2")
                   (place-fret 3 13 "4")
                   (place-fret 2 12 "3")
                   (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh = \markup \fret-diagram-with-footer "DOMINANT 7" ##t #1 #diagram-size #f-dominant-seventh-sixth-root #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh
