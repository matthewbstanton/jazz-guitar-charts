\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-f-flat-frets = #'((mute 6)
                                  (mute 5)
                                  (place-fret 4 2 "1" red)
                                  (place-fret 3 4 "2" darkgreen)
                                  (place-fret 2 4 "3")
                                  (place-fret 1 4 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-f-flat = \markup \fret-diagram-with-footer "Fb MAJOR 7" ##f #0 #diagram-size #d-major-seventh-f-flat-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-f-flat
