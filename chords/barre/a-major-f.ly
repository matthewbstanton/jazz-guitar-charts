\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-f-frets = #'((mute 6)
                     (place-fret 5 8 "1" red)
                     (place-fret 4 10 "2" darkgreen)
                     (place-fret 3 10 "2" red)
                     (place-fret 2 10 "2" blue)
                     (place-fret 1 8 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-f = \markup \fret-diagram-with-footer "F MAJOR" ##f #0 #diagram-size #a-major-f-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-f
