\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-d-sharp-frets = #'((mute 6)
                           (place-fret 5 6 "1" red)
                           (place-fret 4 8 "3" darkgreen)
                           (place-fret 3 8 "4" red)
                           (place-fret 2 7 "2")
                           (place-fret 1 6 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-d-sharp = \markup \fret-diagram-with-footer "D# MINOR" ##f #0 #diagram-size #a-minor-d-sharp-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-d-sharp
