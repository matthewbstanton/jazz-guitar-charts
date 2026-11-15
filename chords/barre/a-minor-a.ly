\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-a-frets = #'((mute 6)
                     (place-fret 5 12 "1" red)
                     (place-fret 4 14 "3" darkgreen)
                     (place-fret 3 14 "4" red)
                     (place-fret 2 13 "2")
                     (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-a = \markup \fret-diagram-with-footer "A MINOR" ##f #0 #diagram-size #a-minor-a-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-a
