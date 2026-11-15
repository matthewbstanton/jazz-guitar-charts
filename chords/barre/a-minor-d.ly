\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-d-frets = #'((mute 6)
                     (place-fret 5 5 "1" red)
                     (place-fret 4 7 "3" darkgreen)
                     (place-fret 3 7 "4" red)
                     (place-fret 2 6 "2")
                     (place-fret 1 5 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-d = \markup \fret-diagram-with-footer "D MINOR" ##f #0 #diagram-size #a-minor-d-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-d
