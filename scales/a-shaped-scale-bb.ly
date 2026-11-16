\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Bb major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-b-flat-fingers = #'(
                   (place-fret 6 6 "2" red)
                   (place-fret 6 8 "4")
                   (place-fret 5 5 "1" blue)
                   (place-fret 5 6 "2")
                   (place-fret 5 8 "4" darkgreen)
                   (place-fret 4 5 "1")
                   (place-fret 4 7 "3")
                   (place-fret 4 8 "4" red)
                   (place-fret 3 5 "1")
                   (place-fret 3 7 "3" blue)
                   (place-fret 3 8 "4")
                   (place-fret 2 6 "2" darkgreen)
                   (place-fret 2 8 "4")
                   (place-fret 1 5 "1")
                   (place-fret 1 6 "2" red))

a-shaped-scale-b-flat-function = #'(
                   (place-fret 6 6 "1" red)
                   (place-fret 6 8 "2")
                   (place-fret 5 5 "3" blue)
                   (place-fret 5 6 "4")
                   (place-fret 5 8 "5" darkgreen)
                   (place-fret 4 5 "6")
                   (place-fret 4 7 "7")
                   (place-fret 4 8 "8/1" red)
                   (place-fret 3 5 "2")
                   (place-fret 3 7 "3" blue)
                   (place-fret 3 8 "4")
                   (place-fret 2 6 "5" darkgreen)
                   (place-fret 2 8 "6")
                   (place-fret 1 5 "7")
                   (place-fret 1 6 "8" red))

a-shaped-scale-b-flat-notes = #'(
                   (place-fret 6 6 "Bb" red)
                   (place-fret 6 8 "C")
                   (place-fret 5 5 "D" blue)
                   (place-fret 5 6 "Eb")
                   (place-fret 5 8 "F" darkgreen)
                   (place-fret 4 5 "G")
                   (place-fret 4 7 "A")
                   (place-fret 4 8 "Bb" red)
                   (place-fret 3 5 "C")
                   (place-fret 3 7 "D" blue)
                   (place-fret 3 8 "Eb")
                   (place-fret 2 6 "F" darkgreen)
                   (place-fret 2 8 "G")
                   (place-fret 1 5 "A")
                   (place-fret 1 6 "Bb" red))

\header {
  tagline = ##f
}

a-shaped-scale-b-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-b-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-b-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-b-flat-notes
}

\standalone \a-shaped-scale-b-flat
