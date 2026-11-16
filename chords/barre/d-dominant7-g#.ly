\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-g-sharp-frets = #'((mute 6)
                                      (mute 5)
                                      (place-fret 4 6 "1" red)
                                      (place-fret 3 8 "3" darkgreen)
                                      (place-fret 2 7 "2")
                                      (place-fret 1 8 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-g-sharp = \markup \fret-diagram-with-footer "G# DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-g-sharp-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-g-sharp
