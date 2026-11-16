\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-a-flat-frets = #'((place-fret 6 4 "1" red)
                                  (mute 5)
                                  (place-fret 4 5 "3")
                                  (place-fret 3 5 "4" blue)
                                  (place-fret 2 4 "2" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-a-flat = \markup \fret-diagram-with-footer "Ab MAJOR 7" ##f #0 #diagram-size #e-major-seventh-a-flat-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-a-flat
