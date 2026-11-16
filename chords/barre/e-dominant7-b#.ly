\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-b-sharp-frets = #'((place-fret 6 8 "1" red)
                                      (mute 5)
                                      (place-fret 4 8 "2")
                                      (place-fret 3 9 "4" blue)
                                      (place-fret 2 8 "3" darkgreen)
                                      (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-b-sharp = \markup \fret-diagram-with-footer "B# DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-b-sharp-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-b-sharp
