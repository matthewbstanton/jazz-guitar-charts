\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-minor-seventh-b-sharp-frets = #'((mute 6)
                                   (place-fret 5 3 "1" red)
                                   (place-fret 4 5 "3" darkgreen)
                                   (place-fret 3 3 "1")
                                   (place-fret 2 4 "2")
                                   (place-fret 1 3 "1" darkgreen))

\header {
  tagline = ##f
}

a-minor-seventh-b-sharp = \markup \fret-diagram-with-footer "B# MINOR 7" ##f #0 #diagram-size #a-minor-seventh-b-sharp-frets #'("" "R" "5" "b7" "b3" "5")

\standalone \a-minor-seventh-b-sharp
