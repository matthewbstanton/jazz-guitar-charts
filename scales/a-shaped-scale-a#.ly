\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The A# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-a-sharp-fingers = #'(
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

a-shaped-scale-a-sharp-function = #'(
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

a-shaped-scale-a-sharp-notes = #'(
                   (place-fret 6 6 "A#" red)
                   (place-fret 6 8 "B#")
                   (place-fret 5 5 "C##" blue)
                   (place-fret 5 6 "D#")
                   (place-fret 5 8 "E#" darkgreen)
                   (place-fret 4 5 "F##")
                   (place-fret 4 7 "G##")
                   (place-fret 4 8 "A#" red)
                   (place-fret 3 5 "B#")
                   (place-fret 3 7 "C##" blue)
                   (place-fret 3 8 "D#")
                   (place-fret 2 6 "E#" darkgreen)
                   (place-fret 2 8 "F##")
                   (place-fret 1 5 "G##")
                   (place-fret 1 6 "A#" red))

\header {
  tagline = ##f
}

a-shaped-scale-a-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-a-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-a-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-a-sharp-notes
}

\standalone \a-shaped-scale-a-sharp
