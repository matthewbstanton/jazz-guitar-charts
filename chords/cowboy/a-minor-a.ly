\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-a-open-frets = #'((mute 6)
                          (open 5)
                          (place-fret 4 2 "2" darkgreen)
                          (place-fret 3 2 "3" red)
                          (place-fret 2 1 "1" blue)
                          (open 1))

\header {
  tagline = ##f
}

a-minor-a-open = \markup \fret-diagram-with-footer "A MINOR" ##f #0 #diagram-size #a-minor-a-open-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-a-open
