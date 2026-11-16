\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-f-sharp-frets = #'((place-fret 6 2 "1" red)
                                   (mute 5)
                                   (place-fret 4 3 "3")
                                   (place-fret 3 3 "4" blue)
                                   (place-fret 2 2 "2" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-f-sharp = \markup \fret-diagram-with-footer "F# MAJOR 7" ##f #0 #diagram-size #e-major-seventh-f-sharp-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-f-sharp
