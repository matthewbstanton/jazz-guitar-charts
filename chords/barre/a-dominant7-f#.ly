\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-f-sharp-frets = #'((mute 6)
                                      (place-fret 5 9 "1" red)
                                      (place-fret 4 11 "3" darkgreen)
                                      (place-fret 3 9 "1")
                                      (place-fret 2 11 "4" blue)
                                      (place-fret 1 9 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-f-sharp = \markup \fret-diagram-with-footer "F# DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-f-sharp-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-f-sharp
