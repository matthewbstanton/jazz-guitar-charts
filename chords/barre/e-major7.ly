\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-major-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 13 "3")
                   (place-fret 3 13 "4" blue)
                   (place-fret 2 12 "2" darkgreen)
                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh = \markup \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-sixth-root #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh
