\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-c-sharp-frets = #'((place-fret 6 9 "1" red)
                                      (mute 5)
                                      (place-fret 4 9 "2")
                                      (place-fret 3 10 "4" blue)
                                      (place-fret 2 9 "3" darkgreen)
                                      (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-c-sharp = \markup \fret-diagram-with-footer "C# DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-c-sharp-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-c-sharp
