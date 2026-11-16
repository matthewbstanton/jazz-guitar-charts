\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-b-flat-frets = #'((mute 6)
                          (place-fret 5 1 "1" red)
                          (place-fret 4 3 "2" darkgreen)
                          (place-fret 3 3 "2" red)
                          (place-fret 2 3 "2" blue)
                          (place-fret 1 1 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-b-flat = \markup \fret-diagram-with-footer "Bb MAJOR" ##f #0 #diagram-size #a-major-b-flat-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-b-flat
