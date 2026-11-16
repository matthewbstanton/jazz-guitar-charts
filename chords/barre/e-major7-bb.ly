\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-b-flat-frets = #'((place-fret 6 6 "1" red)
                                  (mute 5)
                                  (place-fret 4 7 "3")
                                  (place-fret 3 7 "4" blue)
                                  (place-fret 2 6 "2" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-b-flat = \markup \fret-diagram-with-footer "Bb MAJOR 7" ##f #0 #diagram-size #e-major-seventh-b-flat-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-b-flat
