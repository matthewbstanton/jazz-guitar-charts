\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The D# major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-d-sharp-fingers = #'(
                   (place-fret 6 11 "2" red)
                   (place-fret 6 13 "4")
                   (place-fret 5 10 "1" blue)
                   (place-fret 5 11 "2")
                   (place-fret 5 13 "4" darkgreen)
                   (place-fret 4 10 "1")
                   (place-fret 4 12 "3")
                   (place-fret 4 13 "4" red)
                   (place-fret 3 10 "1")
                   (place-fret 3 12 "3" blue)
                   (place-fret 3 13 "4")
                   (place-fret 2 11 "2" darkgreen)
                   (place-fret 2 13 "4")
                   (place-fret 1 10 "1")
                   (place-fret 1 11 "2" red))

a-shaped-scale-d-sharp-function = #'(
                   (place-fret 6 11 "1" red)
                   (place-fret 6 13 "2")
                   (place-fret 5 10 "3" blue)
                   (place-fret 5 11 "4")
                   (place-fret 5 13 "5" darkgreen)
                   (place-fret 4 10 "6")
                   (place-fret 4 12 "7")
                   (place-fret 4 13 "8/1" red)
                   (place-fret 3 10 "2")
                   (place-fret 3 12 "3" blue)
                   (place-fret 3 13 "4")
                   (place-fret 2 11 "5" darkgreen)
                   (place-fret 2 13 "6")
                   (place-fret 1 10 "7")
                   (place-fret 1 11 "8" red))

a-shaped-scale-d-sharp-notes = #'(
                   (place-fret 6 11 "D#" red)
                   (place-fret 6 13 "E#")
                   (place-fret 5 10 "F##" blue)
                   (place-fret 5 11 "G#")
                   (place-fret 5 13 "A#" darkgreen)
                   (place-fret 4 10 "B#")
                   (place-fret 4 12 "C##")
                   (place-fret 4 13 "D#" red)
                   (place-fret 3 10 "E#")
                   (place-fret 3 12 "F##" blue)
                   (place-fret 3 13 "G#")
                   (place-fret 2 11 "A#" darkgreen)
                   (place-fret 2 13 "B#")
                   (place-fret 1 10 "C##")
                   (place-fret 1 11 "D#" red))

\header {
  tagline = ##f
}

a-shaped-scale-d-sharp = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-d-sharp-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-d-sharp-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-d-sharp-notes
}

\standalone \a-shaped-scale-d-sharp
