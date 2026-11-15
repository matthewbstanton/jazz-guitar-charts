\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-f-frets = #'((mute 6)
                             (place-fret 5 8 "1" red)
                             (place-fret 4 10 "3" darkgreen)
                             (place-fret 3 8 "1")
                             (place-fret 2 9 "2")
                             (place-fret 1 8 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-f = \markup \fret-diagram-with-footer "F MINOR 7" ##f #0 #diagram-size #a-minor-seventh-f-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-f
