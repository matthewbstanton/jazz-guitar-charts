\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-d-sharp-frets = #'((place-fret 6 11 "1" red)
                                      (mute 5)
                                      (place-fret 4 11 "2")
                                      (place-fret 3 12 "4" blue)
                                      (place-fret 2 11 "3" darkgreen)
                                      (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-d-sharp = \markup \fret-diagram-with-footer "D# DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-d-sharp-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-d-sharp
