\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-a-frets = #'((place-fret 6 5 "1" red)
                                (mute 5)
                                (place-fret 4 5 "2")
                                (place-fret 3 6 "4" blue)
                                (place-fret 2 5 "3" darkgreen)
                                (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-a = \markup \fret-diagram-with-footer "A DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-a-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-a
