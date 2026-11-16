\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Ab major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-a-flat-fingers = #'(
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

a-shaped-scale-a-flat-function = #'(
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

a-shaped-scale-a-flat-notes = #'(
                   (place-fret 6 4 "Ab" red)
                   (place-fret 6 6 "Bb")
                   (place-fret 5 3 "C" blue)
                   (place-fret 5 4 "Db")
                   (place-fret 5 6 "Eb" darkgreen)
                   (place-fret 4 3 "F")
                   (place-fret 4 5 "G")
                   (place-fret 4 6 "Ab" red)
                   (place-fret 3 3 "Bb")
                   (place-fret 3 5 "C" blue)
                   (place-fret 3 6 "Db")
                   (place-fret 2 4 "Eb" darkgreen)
                   (place-fret 2 6 "F")
                   (place-fret 1 3 "G")
                   (place-fret 1 4 "Ab" red))

\header {
  tagline = ##f
}

a-shaped-scale-a-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-a-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-a-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-a-flat-notes
}

\standalone \a-shaped-scale-a-flat
