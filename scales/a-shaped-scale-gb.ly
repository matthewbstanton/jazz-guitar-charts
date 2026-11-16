\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Gb major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-g-flat-fingers = #'(
                   (place-fret 6 2 "2" red)
                   (place-fret 6 4 "4")
                   (place-fret 5 1 "1" blue)
                   (place-fret 5 2 "2")
                   (place-fret 5 4 "4" darkgreen)
                   (place-fret 4 1 "1")
                   (place-fret 4 3 "3")
                   (place-fret 4 4 "4" red)
                   (place-fret 3 1 "1")
                   (place-fret 3 3 "3" blue)
                   (place-fret 3 4 "4")
                   (place-fret 2 2 "2" darkgreen)
                   (place-fret 2 4 "4")
                   (place-fret 1 1 "1")
                   (place-fret 1 2 "2" red))

a-shaped-scale-g-flat-function = #'(
                   (place-fret 6 2 "1" red)
                   (place-fret 6 4 "2")
                   (place-fret 5 1 "3" blue)
                   (place-fret 5 2 "4")
                   (place-fret 5 4 "5" darkgreen)
                   (place-fret 4 1 "6")
                   (place-fret 4 3 "7")
                   (place-fret 4 4 "8/1" red)
                   (place-fret 3 1 "2")
                   (place-fret 3 3 "3" blue)
                   (place-fret 3 4 "4")
                   (place-fret 2 2 "5" darkgreen)
                   (place-fret 2 4 "6")
                   (place-fret 1 1 "7")
                   (place-fret 1 2 "8" red))

a-shaped-scale-g-flat-notes = #'(
                   (place-fret 6 2 "Gb" red)
                   (place-fret 6 4 "Ab")
                   (place-fret 5 1 "Bb" blue)
                   (place-fret 5 2 "Cb")
                   (place-fret 5 4 "Db" darkgreen)
                   (place-fret 4 1 "Eb")
                   (place-fret 4 3 "F")
                   (place-fret 4 4 "Gb" red)
                   (place-fret 3 1 "Ab")
                   (place-fret 3 3 "Bb" blue)
                   (place-fret 3 4 "Cb")
                   (place-fret 2 2 "Db" darkgreen)
                   (place-fret 2 4 "Eb")
                   (place-fret 1 1 "F")
                   (place-fret 1 2 "Gb" red))

\header {
  tagline = ##f
}

a-shaped-scale-g-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #0 #diagram-size #a-shaped-scale-g-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #0 #diagram-size #a-shaped-scale-g-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #0 #diagram-size #a-shaped-scale-g-flat-notes
}

\standalone \a-shaped-scale-g-flat
