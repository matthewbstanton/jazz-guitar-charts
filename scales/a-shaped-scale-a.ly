\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The A major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-a-fingers = #'(
                   (place-fret 6 5 "2" red)
                   (place-fret 6 7 "4")
                   (place-fret 5 4 "1" blue)
                   (place-fret 5 5 "2")
                   (place-fret 5 7 "4" darkgreen)
                   (place-fret 4 4 "1")
                   (place-fret 4 6 "3")
                   (place-fret 4 7 "4" red)
                   (place-fret 3 4 "1")
                   (place-fret 3 6 "3" blue)
                   (place-fret 3 7 "4")
                   (place-fret 2 5 "2" darkgreen)
                   (place-fret 2 7 "4")
                   (place-fret 1 4 "1")
                   (place-fret 1 5 "2" red))

a-shaped-scale-a-function = #'(
                   (place-fret 6 5 "1" red)
                   (place-fret 6 7 "2")
                   (place-fret 5 4 "3" blue)
                   (place-fret 5 5 "4")
                   (place-fret 5 7 "5" darkgreen)
                   (place-fret 4 4 "6")
                   (place-fret 4 6 "7")
                   (place-fret 4 7 "8/1" red)
                   (place-fret 3 4 "2")
                   (place-fret 3 6 "3" blue)
                   (place-fret 3 7 "4")
                   (place-fret 2 5 "5" darkgreen)
                   (place-fret 2 7 "6")
                   (place-fret 1 4 "7")
                   (place-fret 1 5 "8" red))

a-shaped-scale-a-notes = #'(
                   (place-fret 6 5 "A" red)
                   (place-fret 6 7 "B")
                   (place-fret 5 4 "C#" blue)
                   (place-fret 5 5 "D")
                   (place-fret 5 7 "E" darkgreen)
                   (place-fret 4 4 "F#")
                   (place-fret 4 6 "G#")
                   (place-fret 4 7 "A" red)
                   (place-fret 3 4 "B")
                   (place-fret 3 6 "C#" blue)
                   (place-fret 3 7 "D")
                   (place-fret 2 5 "E" darkgreen)
                   (place-fret 2 7 "F#")
                   (place-fret 1 4 "G#")
                   (place-fret 1 5 "A" red))

\header {
  tagline = ##f
}

a-shaped-scale-a = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-a-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-a-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-a-notes
}

\standalone \a-shaped-scale-a
