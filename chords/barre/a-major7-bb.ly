\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-b-flat-frets = #'((mute 6)
                                  (place-fret 5 1 "1" red)
                                  (place-fret 4 3 "3" darkgreen)
                                  (place-fret 3 2 "2")
                                  (place-fret 2 3 "4" blue)
                                  (place-fret 1 1 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-b-flat = \markup \fret-diagram-with-footer "Bb MAJOR 7" ##f #0 #diagram-size #a-major-seventh-b-flat-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-b-flat
