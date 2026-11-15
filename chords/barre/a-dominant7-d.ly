\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-d-frets = #'((mute 6)
                                (place-fret 5 5 "1" red)
                                (place-fret 4 7 "3" darkgreen)
                                (place-fret 3 5 "1")
                                (place-fret 2 7 "4" blue)
                                (place-fret 1 5 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-d = \markup \fret-diagram-with-footer "D DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-d-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-d
