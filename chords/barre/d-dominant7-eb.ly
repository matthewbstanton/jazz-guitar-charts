\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-e-flat-frets = #'((mute 6)
                                     (mute 5)
                                     (place-fret 4 1 "1" red)
                                     (place-fret 3 3 "3" darkgreen)
                                     (place-fret 2 2 "2")
                                     (place-fret 1 3 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-e-flat = \markup \fret-diagram-with-footer "Eb DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-e-flat-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-e-flat
