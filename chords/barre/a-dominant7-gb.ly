\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-g-flat-frets = #'((mute 6)
                                     (place-fret 5 9 "1" red)
                                     (place-fret 4 11 "3" darkgreen)
                                     (place-fret 3 9 "1")
                                     (place-fret 2 11 "4" blue)
                                     (place-fret 1 9 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-g-flat = \markup \fret-diagram-with-footer "Gb DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-g-flat-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-g-flat
