\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-e-frets = #'((mute 6)
                                (place-fret 5 7 "1" red)
                                (place-fret 4 9 "3" darkgreen)
                                (place-fret 3 7 "1")
                                (place-fret 2 9 "4" blue)
                                (place-fret 1 7 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-e = \markup \fret-diagram-with-footer "E DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-e-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-e
