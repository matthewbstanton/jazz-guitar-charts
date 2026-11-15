\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-minor-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 12 "2")
                   (place-fret 3 12 "3")
                   (place-fret 2 12 "4")
                   (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh = \markup \fret-diagram-with-footer "MINOR 7" ##t #1 #diagram-size #f-minor-seventh-sixth-root #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh
