\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-minor-d-open-frets = #'((mute 6)
                          (mute 5)
                          (open 4)
                          (place-fret 3 2 "2" darkgreen)
                          (place-fret 2 3 "3" red)
                          (place-fret 1 1 "1" blue))

\header {
  tagline = ##f
}

d-minor-d-open = \markup \fret-diagram-with-footer "D MINOR" ##f #0 #diagram-size #d-minor-d-open-frets #'("" "" "R" "5" "R" "b3")

\standalone \d-minor-d-open
