\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-g-frets = #'((place-fret 6 3 "1" red)
                             (mute 5)
                             (place-fret 4 4 "3")
                             (place-fret 3 4 "4" blue)
                             (place-fret 2 3 "2" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-g = \markup \fret-diagram-with-footer "G MAJOR 7" ##f #0 #diagram-size #e-major-seventh-g-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-g
