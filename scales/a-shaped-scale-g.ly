\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The G major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-g-fingers = #'(
                   (place-fret 6 3 "2" red)
                   (place-fret 6 5 "4")
                   (place-fret 5 2 "1" blue)
                   (place-fret 5 3 "2")
                   (place-fret 5 5 "4" darkgreen)
                   (place-fret 4 2 "1")
                   (place-fret 4 4 "3")
                   (place-fret 4 5 "4" red)
                   (place-fret 3 2 "1")
                   (place-fret 3 4 "3" blue)
                   (place-fret 3 5 "4")
                   (place-fret 2 3 "2" darkgreen)
                   (place-fret 2 5 "4")
                   (place-fret 1 2 "1")
                   (place-fret 1 3 "2" red))

a-shaped-scale-g-function = #'(
                   (place-fret 6 3 "1" red)
                   (place-fret 6 5 "2")
                   (place-fret 5 2 "3" blue)
                   (place-fret 5 3 "4")
                   (place-fret 5 5 "5" darkgreen)
                   (place-fret 4 2 "6")
                   (place-fret 4 4 "7")
                   (place-fret 4 5 "8/1" red)
                   (place-fret 3 2 "2")
                   (place-fret 3 4 "3" blue)
                   (place-fret 3 5 "4")
                   (place-fret 2 3 "5" darkgreen)
                   (place-fret 2 5 "6")
                   (place-fret 1 2 "7")
                   (place-fret 1 3 "8" red))

a-shaped-scale-g-notes = #'(
                   (place-fret 6 3 "G" red)
                   (place-fret 6 5 "A")
                   (place-fret 5 2 "B" blue)
                   (place-fret 5 3 "C")
                   (place-fret 5 5 "D" darkgreen)
                   (place-fret 4 2 "E")
                   (place-fret 4 4 "F#")
                   (place-fret 4 5 "G" red)
                   (place-fret 3 2 "A")
                   (place-fret 3 4 "B" blue)
                   (place-fret 3 5 "C")
                   (place-fret 2 3 "D" darkgreen)
                   (place-fret 2 5 "E")
                   (place-fret 1 2 "F#")
                   (place-fret 1 3 "G" red))

\header {
  tagline = ##f
}

a-shaped-scale-g = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-g-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-g-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-g-notes
}

\standalone \a-shaped-scale-g
