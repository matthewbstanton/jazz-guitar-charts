\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The D major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-d-fingers = #'(
                   (place-fret 6 10 "2" red)
                   (place-fret 6 12 "4")
                   (place-fret 5 9 "1" blue)
                   (place-fret 5 10 "2")
                   (place-fret 5 12 "4" darkgreen)
                   (place-fret 4 9 "1")
                   (place-fret 4 11 "3")
                   (place-fret 4 12 "4" red)
                   (place-fret 3 9 "1")
                   (place-fret 3 11 "3" blue)
                   (place-fret 3 12 "4")
                   (place-fret 2 10 "2" darkgreen)
                   (place-fret 2 12 "4")
                   (place-fret 1 9 "1")
                   (place-fret 1 10 "2" red))

a-shaped-scale-d-function = #'(
                   (place-fret 6 10 "1" red)
                   (place-fret 6 12 "2")
                   (place-fret 5 9 "3" blue)
                   (place-fret 5 10 "4")
                   (place-fret 5 12 "5" darkgreen)
                   (place-fret 4 9 "6")
                   (place-fret 4 11 "7")
                   (place-fret 4 12 "8/1" red)
                   (place-fret 3 9 "2")
                   (place-fret 3 11 "3" blue)
                   (place-fret 3 12 "4")
                   (place-fret 2 10 "5" darkgreen)
                   (place-fret 2 12 "6")
                   (place-fret 1 9 "7")
                   (place-fret 1 10 "8" red))

a-shaped-scale-d-notes = #'(
                   (place-fret 6 10 "D" red)
                   (place-fret 6 12 "E")
                   (place-fret 5 9 "F#" blue)
                   (place-fret 5 10 "G")
                   (place-fret 5 12 "A" darkgreen)
                   (place-fret 4 9 "B")
                   (place-fret 4 11 "C#")
                   (place-fret 4 12 "D" red)
                   (place-fret 3 9 "E")
                   (place-fret 3 11 "F#" blue)
                   (place-fret 3 12 "G")
                   (place-fret 2 10 "A" darkgreen)
                   (place-fret 2 12 "B")
                   (place-fret 1 9 "C#")
                   (place-fret 1 10 "D" red))

\header {
  tagline = ##f
}

a-shaped-scale-d = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-d-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-d-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-d-notes
}

\standalone \a-shaped-scale-d
