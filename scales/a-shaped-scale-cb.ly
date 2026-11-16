\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Cb major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-c-flat-fingers = #'(
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

a-shaped-scale-c-flat-function = #'(
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

a-shaped-scale-c-flat-notes = #'(
                   (place-fret 6 7 "Cb" red)
                   (place-fret 6 9 "Db")
                   (place-fret 5 6 "Eb" blue)
                   (place-fret 5 7 "Fb")
                   (place-fret 5 9 "Gb" darkgreen)
                   (place-fret 4 6 "Ab")
                   (place-fret 4 8 "Bb")
                   (place-fret 4 9 "Cb" red)
                   (place-fret 3 6 "Db")
                   (place-fret 3 8 "Eb" blue)
                   (place-fret 3 9 "Fb")
                   (place-fret 2 7 "Gb" darkgreen)
                   (place-fret 2 9 "Ab")
                   (place-fret 1 6 "Bb")
                   (place-fret 1 7 "Cb" red))

\header {
  tagline = ##f
}

a-shaped-scale-c-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-c-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-c-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-c-flat-notes
}

\standalone \a-shaped-scale-c-flat
