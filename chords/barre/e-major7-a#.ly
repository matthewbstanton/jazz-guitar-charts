\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-a-sharp-frets = #'((place-fret 6 6 "1" red)
                                   (mute 5)
                                   (place-fret 4 7 "3")
                                   (place-fret 3 7 "4" blue)
                                   (place-fret 2 6 "2" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-a-sharp = \markup \fret-diagram-with-footer "A# MAJOR 7" ##f #0 #diagram-size #e-major-seventh-a-sharp-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-a-sharp
