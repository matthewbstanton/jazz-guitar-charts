\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-b-frets = #'((place-fret 6 7 "1" red)
                                (mute 5)
                                (place-fret 4 7 "2")
                                (place-fret 3 8 "4" blue)
                                (place-fret 2 7 "3" darkgreen)
                                (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-b = \markup \fret-diagram-with-footer "B DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-b-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-b
