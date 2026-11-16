\version "2.26.0"

\include "../../library/fret-diagrams.ly"

e-minor-seventh-g-flat-frets = #'((place-fret 6 2 "1" red)
                                  (mute 5)
                                  (place-fret 4 2 "2")
                                  (place-fret 3 2 "3")
                                  (place-fret 2 2 "4" darkgreen)
                                  (mute 1))

\header {
  tagline = ##f
}

e-minor-seventh-g-flat = \markup \fret-diagram-with-footer "Gb MINOR 7" ##f #0 #diagram-size #e-minor-seventh-g-flat-frets #'("R" "" "b7" "b3" "5" "")

\standalone \e-minor-seventh-g-flat
