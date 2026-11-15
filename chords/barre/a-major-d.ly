\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-d-frets = #'((mute 6)
                     (place-fret 5 5 "1" red)
                     (place-fret 4 7 "2" darkgreen)
                     (place-fret 3 7 "2" red)
                     (place-fret 2 7 "2" blue)
                     (place-fret 1 5 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-d = \markup \fret-diagram-with-footer "D MAJOR" ##f #0 #diagram-size #a-major-d-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-d
