\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-c-sharp-frets = #'((mute 6)
                           (place-fret 5 4 "1" red)
                           (place-fret 4 6 "2" darkgreen)
                           (place-fret 3 6 "2" red)
                           (place-fret 2 6 "2" blue)
                           (place-fret 1 4 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-c-sharp = \markup \fret-diagram-with-footer "C# MAJOR" ##f #0 #diagram-size #a-major-c-sharp-frets #'("" "R" "5" "R" "3" "5")

\standalone \a-major-c-sharp
