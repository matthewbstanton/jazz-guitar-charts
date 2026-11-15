\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-c-frets = #'((place-fret 6 8 "1" red)
                             (mute 5)
                             (place-fret 4 8 "2")
                             (place-fret 3 8 "3")
                             (place-fret 2 8 "4" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-c = \markup \fret-diagram-with-footer "C MINOR 7" ##f #0 #diagram-size #e-minor-seventh-c-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-c
