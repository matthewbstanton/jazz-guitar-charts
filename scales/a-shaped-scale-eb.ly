\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Eb major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-e-flat-fingers = #'(
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

a-shaped-scale-e-flat-function = #'(
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

a-shaped-scale-e-flat-notes = #'(
                   (place-fret 6 11 "Eb" red)
                   (place-fret 6 13 "F")
                   (place-fret 5 10 "G" blue)
                   (place-fret 5 11 "Ab")
                   (place-fret 5 13 "Bb" darkgreen)
                   (place-fret 4 10 "C")
                   (place-fret 4 12 "D")
                   (place-fret 4 13 "Eb" red)
                   (place-fret 3 10 "F")
                   (place-fret 3 12 "G" blue)
                   (place-fret 3 13 "Ab")
                   (place-fret 2 11 "Bb" darkgreen)
                   (place-fret 2 13 "C")
                   (place-fret 1 10 "D")
                   (place-fret 1 11 "Eb" red))

\header {
  tagline = ##f
}

a-shaped-scale-e-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-e-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-e-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-e-flat-notes
}

\standalone \a-shaped-scale-e-flat
