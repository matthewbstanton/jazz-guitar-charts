\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-f-flat-frets = #'((place-fret 6 12 "1" red)
                                     (mute 5)
                                     (place-fret 4 12 "2")
                                     (place-fret 3 13 "4" blue)
                                     (place-fret 2 12 "3" darkgreen)
                                     (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-f-flat = \markup \fret-diagram-with-footer "Fb DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-f-flat-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-f-flat
