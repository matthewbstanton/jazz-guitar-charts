\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The B# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-b-sharp-fingers = #'(
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

a-shaped-scale-b-sharp-function = #'(
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

a-shaped-scale-b-sharp-notes = #'(
                   (place-fret 6 8 "B#" red)
                   (place-fret 6 10 "C##")
                   (place-fret 5 7 "D##" blue)
                   (place-fret 5 8 "E#")
                   (place-fret 5 10 "F##" darkgreen)
                   (place-fret 4 7 "G##")
                   (place-fret 4 9 "A##")
                   (place-fret 4 10 "B#" red)
                   (place-fret 3 7 "C##")
                   (place-fret 3 9 "D##" blue)
                   (place-fret 3 10 "E#")
                   (place-fret 2 8 "F##" darkgreen)
                   (place-fret 2 10 "G##")
                   (place-fret 1 7 "A##")
                   (place-fret 1 8 "B#" red))

\header {
  tagline = ##f
}

a-shaped-scale-b-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-b-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-b-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-b-sharp-notes
}

\standalone \a-shaped-scale-b-sharp
