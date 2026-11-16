\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The F# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-f-sharp-fingers = #'(
                   (place-fret 6 2 "2" red)
                   (place-fret 6 4 "4")
                   (place-fret 5 1 "1" blue)
                   (place-fret 5 2 "2")
                   (place-fret 5 4 "4" darkgreen)
                   (place-fret 4 1 "1")
                   (place-fret 4 3 "3")
                   (place-fret 4 4 "4" red)
                   (place-fret 3 1 "1")
                   (place-fret 3 3 "3" blue)
                   (place-fret 3 4 "4")
                   (place-fret 2 2 "2" darkgreen)
                   (place-fret 2 4 "4")
                   (place-fret 1 1 "1")
                   (place-fret 1 2 "2" red))

a-shaped-scale-f-sharp-function = #'(
                   (place-fret 6 2 "1" red)
                   (place-fret 6 4 "2")
                   (place-fret 5 1 "3" blue)
                   (place-fret 5 2 "4")
                   (place-fret 5 4 "5" darkgreen)
                   (place-fret 4 1 "6")
                   (place-fret 4 3 "7")
                   (place-fret 4 4 "8/1" red)
                   (place-fret 3 1 "2")
                   (place-fret 3 3 "3" blue)
                   (place-fret 3 4 "4")
                   (place-fret 2 2 "5" darkgreen)
                   (place-fret 2 4 "6")
                   (place-fret 1 1 "7")
                   (place-fret 1 2 "8" red))

a-shaped-scale-f-sharp-notes = #'(
                   (place-fret 6 2 "F#" red)
                   (place-fret 6 4 "G#")
                   (place-fret 5 1 "A#" blue)
                   (place-fret 5 2 "B")
                   (place-fret 5 4 "C#" darkgreen)
                   (place-fret 4 1 "D#")
                   (place-fret 4 3 "E#")
                   (place-fret 4 4 "F#" red)
                   (place-fret 3 1 "G#")
                   (place-fret 3 3 "A#" blue)
                   (place-fret 3 4 "B")
                   (place-fret 2 2 "C#" darkgreen)
                   (place-fret 2 4 "D#")
                   (place-fret 1 1 "E#")
                   (place-fret 1 2 "F#" red))

\header {
  tagline = ##f
}

a-shaped-scale-f-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #0 #diagram-size #a-shaped-scale-f-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #0 #diagram-size #a-shaped-scale-f-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #0 #diagram-size #a-shaped-scale-f-sharp-notes
}

\standalone \a-shaped-scale-f-sharp
