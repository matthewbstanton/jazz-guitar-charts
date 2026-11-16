\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-a-sharp-frets = #'((mute 6)
                           (place-fret 5 1 "1" red)
                           (place-fret 4 3 "3" darkgreen)
                           (place-fret 3 3 "4" red)
                           (place-fret 2 2 "2")
                           (place-fret 1 1 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-a-sharp = \markup \fret-diagram-with-footer "A# MINOR" ##f #0 #diagram-size #a-minor-a-sharp-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-a-sharp
