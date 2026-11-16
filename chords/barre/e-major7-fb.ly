\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-f-flat-frets = #'((place-fret 6 12 "1" red)
                                  (mute 5)
                                  (place-fret 4 13 "3")
                                  (place-fret 3 13 "4" blue)
                                  (place-fret 2 12 "2" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-f-flat = \markup \fret-diagram-with-footer "Fb MAJOR 7" ##f #0 #diagram-size #e-major-seventh-f-flat-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-f-flat
