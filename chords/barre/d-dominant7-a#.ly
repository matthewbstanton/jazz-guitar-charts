\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-a-sharp-frets = #'((mute 6)
                                      (mute 5)
                                      (place-fret 4 8 "1" red)
                                      (place-fret 3 10 "3" darkgreen)
                                      (place-fret 2 9 "2")
                                      (place-fret 1 10 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-a-sharp = \markup \fret-diagram-with-footer "A# DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-a-sharp-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-a-sharp
