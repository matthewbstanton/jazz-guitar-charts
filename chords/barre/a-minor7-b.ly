\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-b-frets = #'((mute 6)
                             (place-fret 5 2 "1" red)
                             (place-fret 4 4 "3" darkgreen)
                             (place-fret 3 2 "1")
                             (place-fret 2 3 "2")
                             (place-fret 1 2 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-b = \markup \fret-diagram-with-footer "B MINOR 7" ##f #0 #diagram-size #a-minor-seventh-b-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-b
