\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-c-sharp-frets = #'((mute 6)
                                   (place-fret 5 4 "1" red)
                                   (place-fret 4 6 "3" darkgreen)
                                   (place-fret 3 5 "2")
                                   (place-fret 2 6 "4" blue)
                                   (place-fret 1 4 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-c-sharp = \markup \fret-diagram-with-footer "C# MAJOR 7" ##f #0 #diagram-size #a-major-seventh-c-sharp-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-c-sharp
