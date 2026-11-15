\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-c-frets = #'((mute 6)
                             (place-fret 5 3 "1" red)
                             (place-fret 4 5 "3" darkgreen)
                             (place-fret 3 4 "2")
                             (place-fret 2 5 "4" blue)
                             (place-fret 1 3 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-c = \markup \fret-diagram-with-footer "C MAJOR 7" ##f #0 #diagram-size #a-major-seventh-c-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-c
