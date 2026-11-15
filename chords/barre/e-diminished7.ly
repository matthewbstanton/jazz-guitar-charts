\version "2.26.0"

\include "../../library/fret-diagrams.ly"

f-diminished-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 12 "3")
                   (place-fret 3 12 "4")
                   (place-fret 2 11 "2")
                   (mute 1))

\header {
  tagline = ##f
}

e-diminished-seventh = \markup \fret-diagram-with-footer "DIMINISHED 7" ##t #0 #diagram-size #f-diminished-seventh-sixth-root #'("R" "" "b7" "b3" "b5" "")

\standalone \e-diminished-seventh
