\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-c-sharp-frets = #'((mute 6)
                                      (place-fret 5 4 "1" red)
                                      (place-fret 4 6 "3" darkgreen)
                                      (place-fret 3 4 "1")
                                      (place-fret 2 6 "4" blue)
                                      (place-fret 1 4 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-c-sharp = \markup \fret-diagram-with-footer "C# DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-c-sharp-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-c-sharp
