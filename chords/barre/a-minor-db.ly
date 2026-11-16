\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-d-flat-frets = #'((mute 6)
                          (place-fret 5 4 "1" red)
                          (place-fret 4 6 "3" darkgreen)
                          (place-fret 3 6 "4" red)
                          (place-fret 2 5 "2")
                          (place-fret 1 4 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-d-flat = \markup \fret-diagram-with-footer "Db MINOR" ##f #0 #diagram-size #a-minor-d-flat-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-d-flat
