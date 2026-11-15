\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-c-frets = #'((place-fret 6 8 "1" red)
                             (mute 5)
                             (place-fret 4 9 "3")
                             (place-fret 3 9 "4" blue)
                             (place-fret 2 8 "2" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-c = \markup \fret-diagram-with-footer "C MAJOR 7" ##f #0 #diagram-size #e-major-seventh-c-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-c
