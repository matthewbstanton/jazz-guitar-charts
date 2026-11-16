\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-a-sharp-frets = #'((mute 6)
                                      (place-fret 5 1 "1" red)
                                      (place-fret 4 3 "3" darkgreen)
                                      (place-fret 3 1 "1")
                                      (place-fret 2 3 "4" blue)
                                      (place-fret 1 1 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-a-sharp = \markup \fret-diagram-with-footer "A# DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-a-sharp-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-a-sharp
