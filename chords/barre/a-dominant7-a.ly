\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-a-frets = #'((mute 6)
                                (place-fret 5 12 "1" red)
                                (place-fret 4 14 "3" darkgreen)
                                (place-fret 3 12 "1")
                                (place-fret 2 14 "4" blue)
                                (place-fret 1 12 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-a = \markup \fret-diagram-with-footer "A DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-a-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-a
