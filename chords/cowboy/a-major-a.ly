\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-a-open-frets = #'((mute 6)
                          (open 5)
                          (place-fret 4 2 "1" darkgreen)
                          (place-fret 3 2 "2" red)
                          (place-fret 2 2 "3" blue)
                          (open 1))

\header {
  tagline = ##f
}

a-major-a-open = \markup \fret-diagram-with-footer "A MAJOR" ##f #0 #diagram-size #a-major-a-open-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-a-open
