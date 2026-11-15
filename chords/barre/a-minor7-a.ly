\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-a-frets = #'((mute 6)
                             (place-fret 5 12 "1" red)
                             (place-fret 4 14 "3" darkgreen)
                             (place-fret 3 12 "1")
                             (place-fret 2 13 "2")
                             (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-a = \markup \fret-diagram-with-footer "A MINOR 7" ##f #0 #diagram-size #a-minor-seventh-a-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-a
