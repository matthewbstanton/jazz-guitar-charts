\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-g-frets = #'((mute 6)
                     (place-fret 5 10 "1" red)
                     (place-fret 4 12 "3" darkgreen)
                     (place-fret 3 12 "4" red)
                     (place-fret 2 11 "2")
                     (place-fret 1 10 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-g = \markup \fret-diagram-with-footer "G MINOR" ##f #0 #diagram-size #a-minor-g-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-g
