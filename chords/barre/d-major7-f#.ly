\version "2.26.0"

\include "../../library/fret-diagrams.ly"

d-major-seventh-f-sharp-frets = #'((mute 6)
                                   (mute 5)
                                   (place-fret 4 4 "1" red)
                                   (place-fret 3 6 "2" darkgreen)
                                   (place-fret 2 6 "3")
                                   (place-fret 1 6 "4" blue))

\header {
  tagline = ##f
}

d-major-seventh-f-sharp = \markup \fret-diagram-with-footer "F# MAJOR 7" ##f #0 #diagram-size #d-major-seventh-f-sharp-frets #'("" "" "R" "5" "7" "3")

\standalone \d-major-seventh-f-sharp
