\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-g-frets = #'((mute 6)
                                (mute 5)
                                (place-fret 4 5 "1" red)
                                (place-fret 3 7 "3" darkgreen)
                                (place-fret 2 6 "2")
                                (place-fret 1 7 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-g = \markup \fret-diagram-with-footer "G DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-g-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-g
