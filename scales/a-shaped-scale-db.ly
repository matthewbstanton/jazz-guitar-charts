\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Db major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-d-flat-fingers = #'(
                   (place-fret 6 9 "2" red)
                   (place-fret 6 11 "4")
                   (place-fret 5 8 "1" blue)
                   (place-fret 5 9 "2")
                   (place-fret 5 11 "4" darkgreen)
                   (place-fret 4 8 "1")
                   (place-fret 4 10 "3")
                   (place-fret 4 11 "4" red)
                   (place-fret 3 8 "1")
                   (place-fret 3 10 "3" blue)
                   (place-fret 3 11 "4")
                   (place-fret 2 9 "2" darkgreen)
                   (place-fret 2 11 "4")
                   (place-fret 1 8 "1")
                   (place-fret 1 9 "2" red))

a-shaped-scale-d-flat-function = #'(
                   (place-fret 6 9 "1" red)
                   (place-fret 6 11 "2")
                   (place-fret 5 8 "3" blue)
                   (place-fret 5 9 "4")
                   (place-fret 5 11 "5" darkgreen)
                   (place-fret 4 8 "6")
                   (place-fret 4 10 "7")
                   (place-fret 4 11 "8/1" red)
                   (place-fret 3 8 "2")
                   (place-fret 3 10 "3" blue)
                   (place-fret 3 11 "4")
                   (place-fret 2 9 "5" darkgreen)
                   (place-fret 2 11 "6")
                   (place-fret 1 8 "7")
                   (place-fret 1 9 "8" red))

a-shaped-scale-d-flat-notes = #'(
                   (place-fret 6 9 "Db" red)
                   (place-fret 6 11 "Eb")
                   (place-fret 5 8 "F" blue)
                   (place-fret 5 9 "Gb")
                   (place-fret 5 11 "Ab" darkgreen)
                   (place-fret 4 8 "Bb")
                   (place-fret 4 10 "C")
                   (place-fret 4 11 "Db" red)
                   (place-fret 3 8 "Eb")
                   (place-fret 3 10 "F" blue)
                   (place-fret 3 11 "Gb")
                   (place-fret 2 9 "Ab" darkgreen)
                   (place-fret 2 11 "Bb")
                   (place-fret 1 8 "C")
                   (place-fret 1 9 "Db" red))

\header {
  tagline = ##f
}

a-shaped-scale-d-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-d-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-d-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-d-flat-notes
}

\standalone \a-shaped-scale-d-flat
