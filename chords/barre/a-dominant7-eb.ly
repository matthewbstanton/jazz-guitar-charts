\version "2.26.0"

\include "../../library/fret-diagrams.ly"

a-dominant-seventh-e-flat-frets = #'((mute 6)
                                     (place-fret 5 6 "1" red)
                                     (place-fret 4 8 "3" darkgreen)
                                     (place-fret 3 6 "1")
                                     (place-fret 2 8 "4" blue)
                                     (place-fret 1 6 "1" darkgreen))

\header {
  tagline = ##f
}

a-dominant-seventh-e-flat = \markup \fret-diagram-with-footer "Eb DOMINANT 7" ##f #0 #diagram-size #a-dominant-seventh-e-flat-frets #'("" "R" "5" "b7" "3" "5")

\standalone \a-dominant-seventh-e-flat
