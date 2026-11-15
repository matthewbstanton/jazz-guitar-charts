\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-c-frets = #'((mute 6)
                     (place-fret 5 3 "1" red)
                     (place-fret 4 5 "2" darkgreen)
                     (place-fret 3 5 "2" red)
                     (place-fret 2 5 "2" blue)
                     (place-fret 1 3 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-c = \markup \fret-diagram-with-footer "C MAJOR" ##f #0 #diagram-size #a-major-c-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-c
