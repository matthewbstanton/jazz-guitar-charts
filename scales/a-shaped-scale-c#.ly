\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The C# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-c-sharp-fingers = #'(
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

a-shaped-scale-c-sharp-function = #'(
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

a-shaped-scale-c-sharp-notes = #'(
                   (place-fret 6 9 "C#" red)
                   (place-fret 6 11 "D#")
                   (place-fret 5 8 "E#" blue)
                   (place-fret 5 9 "F#")
                   (place-fret 5 11 "G#" darkgreen)
                   (place-fret 4 8 "A#")
                   (place-fret 4 10 "B#")
                   (place-fret 4 11 "C#" red)
                   (place-fret 3 8 "D#")
                   (place-fret 3 10 "E#" blue)
                   (place-fret 3 11 "F#")
                   (place-fret 2 9 "G#" darkgreen)
                   (place-fret 2 11 "A#")
                   (place-fret 1 8 "B#")
                   (place-fret 1 9 "C#" red))

\header {
  tagline = ##f
}

a-shaped-scale-c-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-c-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-c-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-c-sharp-notes
}

\standalone \a-shaped-scale-c-sharp
