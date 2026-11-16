\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-c-flat-frets = #'((mute 6)
                          (place-fret 5 2 "1" red)
                          (place-fret 4 4 "3" darkgreen)
                          (place-fret 3 4 "4" red)
                          (place-fret 2 3 "2")
                          (place-fret 1 2 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-c-flat = \markup \fret-diagram-with-footer "Cb MINOR" ##f #0 #diagram-size #a-minor-c-flat-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-c-flat
