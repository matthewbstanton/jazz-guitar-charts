\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-g-sharp-frets = #'((mute 6)
                                   (place-fret 5 11 "1" red)
                                   (place-fret 4 13 "3" darkgreen)
                                   (place-fret 3 12 "2")
                                   (place-fret 2 13 "4" blue)
                                   (place-fret 1 11 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-g-sharp = \markup \fret-diagram-with-footer "G# MAJOR 7" ##f #0 #diagram-size #a-major-seventh-g-sharp-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-g-sharp
