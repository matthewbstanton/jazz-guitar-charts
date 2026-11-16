\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-b-sharp-frets = #'((mute 6)
                                      (mute 5)
                                      (place-fret 4 10 "1" red)
                                      (place-fret 3 12 "3" darkgreen)
                                      (place-fret 2 11 "2")
                                      (place-fret 1 12 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-b-sharp = \markup \fret-diagram-with-footer "B# DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-b-sharp-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-b-sharp
