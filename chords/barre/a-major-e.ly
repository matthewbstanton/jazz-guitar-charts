\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-e-frets = #'((mute 6)
                     (place-fret 5 7 "1" red)
                     (place-fret 4 9 "2" darkgreen)
                     (place-fret 3 9 "2" red)
                     (place-fret 2 9 "2" blue)
                     (place-fret 1 7 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-e = \markup \fret-diagram-with-footer "E MAJOR" ##f #0 #diagram-size #a-major-e-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-e
