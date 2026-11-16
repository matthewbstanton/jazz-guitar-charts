\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-major-seventh-c-sharp-frets = #'((place-fret 6 9 "1" red)
                                   (mute 5)
                                   (place-fret 4 10 "3")
                                   (place-fret 3 10 "4" blue)
                                   (place-fret 2 9 "2" darkgreen)
                                   (mute 1))

\header {
  tagline = ##f
}

e-major-seventh-c-sharp = \markup \fret-diagram-with-footer "C# MAJOR 7" ##f #0 #diagram-size #e-major-seventh-c-sharp-frets #'("R" "" "7" "3" "5" "")

\standalone \e-major-seventh-c-sharp
