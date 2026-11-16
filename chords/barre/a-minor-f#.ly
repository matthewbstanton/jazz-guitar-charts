\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-f-sharp-frets = #'((mute 6)
                           (place-fret 5 9 "1" red)
                           (place-fret 4 11 "3" darkgreen)
                           (place-fret 3 11 "4" red)
                           (place-fret 2 10 "2")
                           (place-fret 1 9 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-f-sharp = \markup \fret-diagram-with-footer "F# MINOR" ##f #0 #diagram-size #a-minor-f-sharp-frets #'("" "R" "5" "R" "b3" "5")

\standalone \a-minor-f-sharp
