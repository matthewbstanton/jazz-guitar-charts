\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-b-frets = #'((mute 6)
                                (mute 5)
                                (place-fret 4 9 "1" red)
                                (place-fret 3 11 "3" darkgreen)
                                (place-fret 2 10 "2")
                                (place-fret 1 11 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-b = \markup \fret-diagram-with-footer "B DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-b-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-b
