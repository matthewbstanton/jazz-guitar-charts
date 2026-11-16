\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-d-flat-frets = #'((mute 6)
                                  (place-fret 5 4 "1" red)
                                  (place-fret 4 6 "3" darkgreen)
                                  (place-fret 3 4 "1")
                                  (place-fret 2 5 "2")
                                  (place-fret 1 4 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-d-flat = \markup \fret-diagram-with-footer "Db MINOR 7" ##f #0 #diagram-size #a-minor-seventh-d-flat-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-d-flat
