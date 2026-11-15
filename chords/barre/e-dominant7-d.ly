\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-d-frets = #'((place-fret 6 10 "1" red)
                                (mute 5)
                                (place-fret 4 10 "2")
                                (place-fret 3 11 "4" blue)
                                (place-fret 2 10 "3" darkgreen)
                                (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-d = \markup \fret-diagram-with-footer "D DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-d-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-d
