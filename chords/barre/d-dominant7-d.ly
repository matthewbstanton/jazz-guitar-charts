\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-d-frets = #'((mute 6)
                                (mute 5)
                                (place-fret 4 12 "1" red)
                                (place-fret 3 14 "3" darkgreen)
                                (place-fret 2 13 "2")
                                (place-fret 1 14 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-d = \markup \fret-diagram-with-footer "D DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-d-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-d
