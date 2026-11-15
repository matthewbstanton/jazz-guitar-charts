\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-b-frets = #'((mute 6)
                                (place-fret 5 2 "1" red)
                                (place-fret 4 4 "3" darkgreen)
                                (place-fret 3 2 "1")
                                (place-fret 2 4 "4" blue)
                                (place-fret 1 2 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-b = \markup \fret-diagram-with-footer "B DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-b-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-b
