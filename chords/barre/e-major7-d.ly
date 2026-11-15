\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-d-frets = #'((place-fret 6 10 "1" red)
                             (mute 5)
                             (place-fret 4 11 "3")
                             (place-fret 3 11 "4" blue)
                             (place-fret 2 10 "2" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-d = \markup \fret-diagram-with-footer "D MAJOR 7" ##f #0 #diagram-size #e-major-seventh-d-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-d
