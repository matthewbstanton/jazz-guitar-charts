\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-a-flat-frets = #'((mute 6)
                          (place-fret 5 11 "1" red)
                          (place-fret 4 13 "2" darkgreen)
                          (place-fret 3 13 "2" red)
                          (place-fret 2 13 "2" blue)
                          (place-fret 1 11 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-a-flat = \markup \fret-diagram-with-footer "Ab MAJOR" ##f #0 #diagram-size #a-major-a-flat-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-a-flat
