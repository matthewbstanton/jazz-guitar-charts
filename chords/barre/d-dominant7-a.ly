\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-a-frets = #'((mute 6)
                                (mute 5)
                                (place-fret 4 7 "1" red)
                                (place-fret 3 9 "3" darkgreen)
                                (place-fret 2 8 "2")
                                (place-fret 1 9 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-a = \markup \fret-diagram-with-footer "A DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-a-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-a
