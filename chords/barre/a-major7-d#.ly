\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-major-seventh-d-sharp-frets = #'((mute 6)
                                   (place-fret 5 6 "1" red)
                                   (place-fret 4 8 "3" darkgreen)
                                   (place-fret 3 7 "2")
                                   (place-fret 2 8 "4" blue)
                                   (place-fret 1 6 "1" darkgreen))

\header {
  tagline = ##f
}

a-major-seventh-d-sharp = \markup \fret-diagram-with-footer "D# MAJOR 7" ##f #0 #diagram-size #a-major-seventh-d-sharp-frets #'("" "R" "5" "7" "3" "5")

\standalone \a-major-seventh-d-sharp
