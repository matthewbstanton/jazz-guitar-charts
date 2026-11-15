\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-b-frets = #'((mute 6)
                     (place-fret 5 2 "1" red)
                     (place-fret 4 4 "2" darkgreen)
                     (place-fret 3 4 "2" red)
                     (place-fret 2 4 "2" blue)
                     (place-fret 1 2 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-b = \markup \fret-diagram-with-footer "B MAJOR" ##f #0 #diagram-size #a-major-b-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-b
