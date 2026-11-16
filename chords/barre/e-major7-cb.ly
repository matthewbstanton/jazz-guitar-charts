\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-c-flat-frets = #'((place-fret 6 7 "1" red)
                                  (mute 5)
                                  (place-fret 4 8 "3")
                                  (place-fret 3 8 "4" blue)
                                  (place-fret 2 7 "2" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-c-flat = \markup \fret-diagram-with-footer "Cb MAJOR 7" ##f #0 #diagram-size #e-major-seventh-c-flat-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-c-flat
