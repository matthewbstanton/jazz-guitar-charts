\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-b-flat-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 8 "1" red)
                                  (place-fret 3 10 "2" darkgreen)
                                  (place-fret 2 10 "3")
                                  (place-fret 1 10 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-b-flat = \markup \fret-diagram-with-footer "Bb MAJOR 7" ##f #0 #diagram-size #d-major-seventh-b-flat-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-b-flat
