\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-dominant-seventh-b-flat-frets = #'((mute 6)
                                     (mute 5)
                                     (place-fret 4 8 "1" red)
                                     (place-fret 3 10 "3" darkgreen)
                                     (place-fret 2 9 "2")
                                     (place-fret 1 10 "4" blue))

\header {
  tagline = ##f
}

d-dominant-seventh-b-flat = \markup \fret-diagram-with-footer "Bb DOMINANT 7" ##f #0 #diagram-size #d-dominant-seventh-b-flat-frets #'("" "" "R" "5" "b7" "3")

\standalone \d-dominant-seventh-b-flat
