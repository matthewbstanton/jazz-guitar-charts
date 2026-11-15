\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-g-frets = #'((mute 6)
                             (place-fret 5 10 "1" red)
                             (place-fret 4 12 "3" darkgreen)
                             (place-fret 3 11 "2")
                             (place-fret 2 12 "4" blue)
                             (place-fret 1 10 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-g = \markup \fret-diagram-with-footer "G MAJOR 7" ##f #0 #diagram-size #a-major-seventh-g-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-g
