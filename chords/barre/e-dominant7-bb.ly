\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-b-flat-frets = #'((place-fret 6 6 "1" red)
                                     (mute 5)
                                     (place-fret 4 6 "2")
                                     (place-fret 3 7 "4" blue)
                                     (place-fret 2 6 "3" darkgreen)
                                     (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-b-flat = \markup \fret-diagram-with-footer "Bb DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-b-flat-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-b-flat
