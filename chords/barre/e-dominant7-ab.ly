\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-a-flat-frets = #'((place-fret 6 4 "1" red)
                                     (mute 5)
                                     (place-fret 4 4 "2")
                                     (place-fret 3 5 "4" blue)
                                     (place-fret 2 4 "3" darkgreen)
                                     (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-a-flat = \markup \fret-diagram-with-footer "Ab DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-a-flat-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-a-flat
