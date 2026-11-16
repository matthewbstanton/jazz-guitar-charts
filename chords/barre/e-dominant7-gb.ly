\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-dominant-seventh-g-flat-frets = #'((place-fret 6 2 "1" red)
                                     (mute 5)
                                     (place-fret 4 2 "2")
                                     (place-fret 3 3 "4" blue)
                                     (place-fret 2 2 "3" darkgreen)
                                     (mute 1))

\header {
  tagline = ##f
}

e-dominant-seventh-g-flat = \markup \fret-diagram-with-footer "Gb DOMINANT 7" ##f #0 #diagram-size #e-dominant-seventh-g-flat-frets #'("R" "" "b7" "3" "5" "")

\standalone \e-dominant-seventh-g-flat
