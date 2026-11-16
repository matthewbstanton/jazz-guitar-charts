\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-f-flat-frets = #'((mute 6)
                          (place-fret 5 7 "1" red)
                          (place-fret 4 9 "3" darkgreen)
                          (place-fret 3 9 "4" red)
                          (place-fret 2 8 "2")
                          (place-fret 1 7 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-f-flat = \markup \fret-diagram-with-footer "Fb MINOR" ##f #0 #diagram-size #a-minor-f-flat-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-f-flat
