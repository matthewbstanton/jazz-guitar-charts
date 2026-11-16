\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-g-sharp-frets = #'((mute 6)
                                      (place-fret 5 11 "1" red)
                                      (place-fret 4 13 "3" darkgreen)
                                      (place-fret 3 11 "1")
                                      (place-fret 2 13 "4" blue)
                                      (place-fret 1 11 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-g-sharp = \markup \fret-diagram-with-footer "G# DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-g-sharp-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-g-sharp
