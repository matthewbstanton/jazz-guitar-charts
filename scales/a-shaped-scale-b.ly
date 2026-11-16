\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The B major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-b-fingers = #'(
                   (place-fret 6 7 "2" red)
                   (place-fret 6 9 "4")
                   (place-fret 5 6 "1" blue)
                   (place-fret 5 7 "2")
                   (place-fret 5 9 "4" darkgreen)
                   (place-fret 4 6 "1")
                   (place-fret 4 8 "3")
                   (place-fret 4 9 "4" red)
                   (place-fret 3 6 "1")
                   (place-fret 3 8 "3" blue)
                   (place-fret 3 9 "4")
                   (place-fret 2 7 "2" darkgreen)
                   (place-fret 2 9 "4")
                   (place-fret 1 6 "1")
                   (place-fret 1 7 "2" red))

a-shaped-scale-b-function = #'(
                   (place-fret 6 7 "1" red)
                   (place-fret 6 9 "2")
                   (place-fret 5 6 "3" blue)
                   (place-fret 5 7 "4")
                   (place-fret 5 9 "5" darkgreen)
                   (place-fret 4 6 "6")
                   (place-fret 4 8 "7")
                   (place-fret 4 9 "8/1" red)
                   (place-fret 3 6 "2")
                   (place-fret 3 8 "3" blue)
                   (place-fret 3 9 "4")
                   (place-fret 2 7 "5" darkgreen)
                   (place-fret 2 9 "6")
                   (place-fret 1 6 "7")
                   (place-fret 1 7 "8" red))

a-shaped-scale-b-notes = #'(
                   (place-fret 6 7 "B" red)
                   (place-fret 6 9 "C#")
                   (place-fret 5 6 "D#" blue)
                   (place-fret 5 7 "E")
                   (place-fret 5 9 "F#" darkgreen)
                   (place-fret 4 6 "G#")
                   (place-fret 4 8 "A#")
                   (place-fret 4 9 "B" red)
                   (place-fret 3 6 "C#")
                   (place-fret 3 8 "D#" blue)
                   (place-fret 3 9 "E")
                   (place-fret 2 7 "F#" darkgreen)
                   (place-fret 2 9 "G#")
                   (place-fret 1 6 "A#")
                   (place-fret 1 7 "B" red))

\header {
  tagline = ##f
}

a-shaped-scale-b = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-b-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-b-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-b-notes
}

\standalone \a-shaped-scale-b
