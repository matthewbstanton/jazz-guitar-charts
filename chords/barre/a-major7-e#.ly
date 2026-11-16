\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-e-sharp-frets = #'((mute 6)
                                   (place-fret 5 8 "1" red)
                                   (place-fret 4 10 "3" darkgreen)
                                   (place-fret 3 9 "2")
                                   (place-fret 2 10 "4" blue)
                                   (place-fret 1 8 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-e-sharp = \markup \fret-diagram-with-footer "E# MAJOR 7" ##f #0 #diagram-size #a-major-seventh-e-sharp-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-e-sharp
