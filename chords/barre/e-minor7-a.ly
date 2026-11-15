\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-a-frets = #'((place-fret 6 5 "1" red)
                             (mute 5)
                             (place-fret 4 5 "2")
                             (place-fret 3 5 "3")
                             (place-fret 2 5 "4" darkgreen)
                             (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-a = \markup \fret-diagram-with-footer "A MINOR 7" ##f #0 #diagram-size #e-minor-seventh-a-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-a
