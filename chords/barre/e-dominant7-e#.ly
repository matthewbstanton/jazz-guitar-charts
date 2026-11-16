\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-e-sharp-frets = #'((place-fret 6 1 "1" red)
                                      (mute 5)
                                      (place-fret 4 1 "2")
                                      (place-fret 3 2 "4" blue)
                                      (place-fret 2 1 "3" darkgreen)
                                      (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-e-sharp = \markup \fret-diagram-with-footer "E# DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-e-sharp-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-e-sharp
