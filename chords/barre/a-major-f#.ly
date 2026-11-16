\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-f-sharp-frets = #'((mute 6)
                           (place-fret 5 9 "1" red)
                           (place-fret 4 11 "2" darkgreen)
                           (place-fret 3 11 "2" red)
                           (place-fret 2 11 "2" blue)
                           (place-fret 1 9 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-f-sharp = \markup \fret-diagram-with-footer "F# MAJOR" ##f #0 #diagram-size #a-major-f-sharp-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-f-sharp
