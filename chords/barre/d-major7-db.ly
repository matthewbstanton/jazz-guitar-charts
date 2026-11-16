\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-d-flat-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 11 "1" red)
                                  (place-fret 3 13 "2" darkgreen)
                                  (place-fret 2 13 "3")
                                  (place-fret 1 13 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-d-flat = \markup \fret-diagram-with-footer "Db MAJOR 7" ##f #0 #diagram-size #d-major-seventh-d-flat-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-d-flat
