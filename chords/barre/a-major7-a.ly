\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-a-frets = #'((mute 6)
                             (place-fret 5 12 "1" red)
                             (place-fret 4 14 "3" darkgreen)
                             (place-fret 3 13 "2")
                             (place-fret 2 14 "4" blue)
                             (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-a = \markup \fret-diagram-with-footer "A MAJOR 7" ##f #0 #diagram-size #a-major-seventh-a-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-a
