\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-f-flat-frets = #'((mute 6)
                                  (place-fret 5 7 "1" red)
                                  (place-fret 4 9 "3" darkgreen)
                                  (place-fret 3 8 "2")
                                  (place-fret 2 9 "4" blue)
                                  (place-fret 1 7 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-f-flat = \markup \fret-diagram-with-footer "Fb MAJOR 7" ##f #0 #diagram-size #a-major-seventh-f-flat-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-f-flat
