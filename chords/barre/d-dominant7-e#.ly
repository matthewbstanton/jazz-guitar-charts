\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-e-sharp-frets = #'((mute 6)
                                      (mute 5)
                                      (place-fret 4 3 "1" red)
                                      (place-fret 3 5 "3" darkgreen)
                                      (place-fret 2 4 "2")
                                      (place-fret 1 5 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-e-sharp = \markup \fret-diagram-with-footer "E# DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-e-sharp-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-e-sharp
