\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-d-frets = #'((place-fret 6 10 "1" red)
                             (mute 5)
                             (place-fret 4 10 "2")
                             (place-fret 3 10 "3")
                             (place-fret 2 10 "4" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-d = \markup \fret-diagram-with-footer "D MINOR 7" ##f #0 #diagram-size #e-minor-seventh-d-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-d
