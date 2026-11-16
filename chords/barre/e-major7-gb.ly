\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-g-flat-frets = #'((place-fret 6 2 "1" red)
                                  (mute 5)
                                  (place-fret 4 3 "3")
                                  (place-fret 3 3 "4" blue)
                                  (place-fret 2 2 "2" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-g-flat = \markup \fret-diagram-with-footer "Gb MAJOR 7" ##f #0 #diagram-size #e-major-seventh-g-flat-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-g-flat
