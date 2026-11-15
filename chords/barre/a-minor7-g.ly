\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-g-frets = #'((mute 6)
                             (place-fret 5 10 "1" red)
                             (place-fret 4 12 "3" darkgreen)
                             (place-fret 3 10 "1")
                             (place-fret 2 11 "2")
                             (place-fret 1 10 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-g = \markup \fret-diagram-with-footer "G MINOR 7" ##f #0 #diagram-size #a-minor-seventh-g-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-g
