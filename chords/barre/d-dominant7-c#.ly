\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-c-sharp-frets = #'((mute 6)
                                      (mute 5)
                                      (place-fret 4 11 "1" red)
                                      (place-fret 3 13 "3" darkgreen)
                                      (place-fret 2 12 "2")
                                      (place-fret 1 13 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-c-sharp = \markup \fret-diagram-with-footer "C# DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-c-sharp-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-c-sharp
