\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-e-frets = #'((mute 6)
                             (place-fret 5 7 "1" red)
                             (place-fret 4 9 "3" darkgreen)
                             (place-fret 3 7 "1")
                             (place-fret 2 8 "2")
                             (place-fret 1 7 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-e = \markup \fret-diagram-with-footer "E MINOR 7" ##f #0 #diagram-size #a-minor-seventh-e-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-e
