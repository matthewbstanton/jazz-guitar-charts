\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-g-frets = #'((place-fret 6 3 "1" red)
                                (mute 5)
                                (place-fret 4 3 "2")
                                (place-fret 3 4 "4" blue)
                                (place-fret 2 3 "3" darkgreen)
                                (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-g = \markup \fret-diagram-with-footer "G DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-g-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-g
