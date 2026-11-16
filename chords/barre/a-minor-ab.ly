\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-a-flat-frets = #'((mute 6)
                          (place-fret 5 11 "1" red)
                          (place-fret 4 13 "3" darkgreen)
                          (place-fret 3 13 "4" red)
                          (place-fret 2 12 "2")
                          (place-fret 1 11 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-a-flat = \markup \fret-diagram-with-footer "Ab MINOR" ##f #0 #diagram-size #a-minor-a-flat-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-a-flat
