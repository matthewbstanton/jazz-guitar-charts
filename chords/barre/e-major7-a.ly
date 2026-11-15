\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-a-frets = #'((place-fret 6 5 "1" red)
                             (mute 5)
                             (place-fret 4 6 "3")
                             (place-fret 3 6 "4" blue)
                             (place-fret 2 5 "2" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-a = \markup \fret-diagram-with-footer "A MAJOR 7" ##f #0 #diagram-size #e-major-seventh-a-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-a
