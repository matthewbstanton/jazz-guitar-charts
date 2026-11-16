\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The E# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-e-sharp-fingers = #'(
                   (place-fret 6 13 "2" red)
                   (place-fret 6 15 "4")
                   (place-fret 5 12 "1" blue)
                   (place-fret 5 13 "2")
                   (place-fret 5 15 "4" darkgreen)
                   (place-fret 4 12 "1")
                   (place-fret 4 14 "3")
                   (place-fret 4 15 "4" red)
                   (place-fret 3 12 "1")
                   (place-fret 3 14 "3" blue)
                   (place-fret 3 15 "4")
                   (place-fret 2 13 "2" darkgreen)
                   (place-fret 2 15 "4")
                   (place-fret 1 12 "1")
                   (place-fret 1 13 "2" red))

a-shaped-scale-e-sharp-function = #'(
                   (place-fret 6 13 "1" red)
                   (place-fret 6 15 "2")
                   (place-fret 5 12 "3" blue)
                   (place-fret 5 13 "4")
                   (place-fret 5 15 "5" darkgreen)
                   (place-fret 4 12 "6")
                   (place-fret 4 14 "7")
                   (place-fret 4 15 "8/1" red)
                   (place-fret 3 12 "2")
                   (place-fret 3 14 "3" blue)
                   (place-fret 3 15 "4")
                   (place-fret 2 13 "5" darkgreen)
                   (place-fret 2 15 "6")
                   (place-fret 1 12 "7")
                   (place-fret 1 13 "8" red))

a-shaped-scale-e-sharp-notes = #'(
                   (place-fret 6 13 "E#" red)
                   (place-fret 6 15 "F##")
                   (place-fret 5 12 "G##" blue)
                   (place-fret 5 13 "A#")
                   (place-fret 5 15 "B#" darkgreen)
                   (place-fret 4 12 "C##")
                   (place-fret 4 14 "D##")
                   (place-fret 4 15 "E#" red)
                   (place-fret 3 12 "F##")
                   (place-fret 3 14 "G##" blue)
                   (place-fret 3 15 "A#")
                   (place-fret 2 13 "B#" darkgreen)
                   (place-fret 2 15 "C##")
                   (place-fret 1 12 "D##")
                   (place-fret 1 13 "E#" red))

\header {
  tagline = ##f
}

a-shaped-scale-e-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-e-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-e-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-e-sharp-notes
}

\standalone \a-shaped-scale-e-sharp
