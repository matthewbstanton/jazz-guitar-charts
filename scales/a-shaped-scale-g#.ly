\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The G# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-g-sharp-fingers = #'(
                   (place-fret 6 4 "2" red)
                   (place-fret 6 6 "4")
                   (place-fret 5 3 "1" blue)
                   (place-fret 5 4 "2")
                   (place-fret 5 6 "4" darkgreen)
                   (place-fret 4 3 "1")
                   (place-fret 4 5 "3")
                   (place-fret 4 6 "4" red)
                   (place-fret 3 3 "1")
                   (place-fret 3 5 "3" blue)
                   (place-fret 3 6 "4")
                   (place-fret 2 4 "2" darkgreen)
                   (place-fret 2 6 "4")
                   (place-fret 1 3 "1")
                   (place-fret 1 4 "2" red))

a-shaped-scale-g-sharp-function = #'(
                   (place-fret 6 4 "1" red)
                   (place-fret 6 6 "2")
                   (place-fret 5 3 "3" blue)
                   (place-fret 5 4 "4")
                   (place-fret 5 6 "5" darkgreen)
                   (place-fret 4 3 "6")
                   (place-fret 4 5 "7")
                   (place-fret 4 6 "8/1" red)
                   (place-fret 3 3 "2")
                   (place-fret 3 5 "3" blue)
                   (place-fret 3 6 "4")
                   (place-fret 2 4 "5" darkgreen)
                   (place-fret 2 6 "6")
                   (place-fret 1 3 "7")
                   (place-fret 1 4 "8" red))

a-shaped-scale-g-sharp-notes = #'(
                   (place-fret 6 4 "G#" red)
                   (place-fret 6 6 "A#")
                   (place-fret 5 3 "B#" blue)
                   (place-fret 5 4 "C#")
                   (place-fret 5 6 "D#" darkgreen)
                   (place-fret 4 3 "E#")
                   (place-fret 4 5 "F##")
                   (place-fret 4 6 "G#" red)
                   (place-fret 3 3 "A#")
                   (place-fret 3 5 "B#" blue)
                   (place-fret 3 6 "C#")
                   (place-fret 2 4 "D#" darkgreen)
                   (place-fret 2 6 "E#")
                   (place-fret 1 3 "F##")
                   (place-fret 1 4 "G#" red))

\header {
  tagline = ##f
}

a-shaped-scale-g-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-g-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-g-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-g-sharp-notes
}

\standalone \a-shaped-scale-g-sharp
