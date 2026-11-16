\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The C major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-c-fingers = #'(
                   (place-fret 6 8 "2" red)
                   (place-fret 6 10 "4")
                   (place-fret 5 7 "1" blue)
                   (place-fret 5 8 "2")
                   (place-fret 5 10 "4" darkgreen)
                   (place-fret 4 7 "1")
                   (place-fret 4 9 "3")
                   (place-fret 4 10 "4" red)
                   (place-fret 3 7 "1")
                   (place-fret 3 9 "3" blue)
                   (place-fret 3 10 "4")
                   (place-fret 2 8 "2" darkgreen)
                   (place-fret 2 10 "4")
                   (place-fret 1 7 "1")
                   (place-fret 1 8 "2" red))

a-shaped-scale-c-function = #'(
                   (place-fret 6 8 "1" red)
                   (place-fret 6 10 "2")
                   (place-fret 5 7 "3" blue)
                   (place-fret 5 8 "4")
                   (place-fret 5 10 "5" darkgreen)
                   (place-fret 4 7 "6")
                   (place-fret 4 9 "7")
                   (place-fret 4 10 "8/1" red)
                   (place-fret 3 7 "2")
                   (place-fret 3 9 "3" blue)
                   (place-fret 3 10 "4")
                   (place-fret 2 8 "5" darkgreen)
                   (place-fret 2 10 "6")
                   (place-fret 1 7 "7")
                   (place-fret 1 8 "8" red))

a-shaped-scale-c-notes = #'(
                   (place-fret 6 8 "C" red)
                   (place-fret 6 10 "D")
                   (place-fret 5 7 "E" blue)
                   (place-fret 5 8 "F")
                   (place-fret 5 10 "G" darkgreen)
                   (place-fret 4 7 "A")
                   (place-fret 4 9 "B")
                   (place-fret 4 10 "C" red)
                   (place-fret 3 7 "D")
                   (place-fret 3 9 "E" blue)
                   (place-fret 3 10 "F")
                   (place-fret 2 8 "G" darkgreen)
                   (place-fret 2 10 "A")
                   (place-fret 1 7 "B")
                   (place-fret 1 8 "C" red))

\header {
  tagline = ##f
}

a-shaped-scale-c = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-c-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-c-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-c-notes
}

\standalone \a-shaped-scale-c
