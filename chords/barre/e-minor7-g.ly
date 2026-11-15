\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-g-frets = #'((place-fret 6 3 "1" red)
                             (mute 5)
                             (place-fret 4 3 "2")
                             (place-fret 3 3 "3")
                             (place-fret 2 3 "4" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-g = \markup \fret-diagram-with-footer "G MINOR 7" ##f #0 #diagram-size #e-minor-seventh-g-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-g
