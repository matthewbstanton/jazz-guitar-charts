\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-f-sharp-frets = #'((mute 6)
                                      (mute 5)
                                      (place-fret 4 4 "1" red)
                                      (place-fret 3 6 "3" darkgreen)
                                      (place-fret 2 5 "2")
                                      (place-fret 1 6 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-f-sharp = \markup \fret-diagram-with-footer "F# DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-f-sharp-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-f-sharp
