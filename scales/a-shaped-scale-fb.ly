\version "2.26.0"

\include "../library/fret-diagrams.ly"

% The Fb major scale in the A shape, as three sets of dot labels: the finger
% that plays each note, its scale degree, and its note name.
a-shaped-scale-f-flat-fingers = #'(
                   (place-fret 6 12 "2" red)
                   (place-fret 6 14 "4")
                   (place-fret 5 11 "1" blue)
                   (place-fret 5 12 "2")
                   (place-fret 5 14 "4" darkgreen)
                   (place-fret 4 11 "1")
                   (place-fret 4 13 "3")
                   (place-fret 4 14 "4" red)
                   (place-fret 3 11 "1")
                   (place-fret 3 13 "3" blue)
                   (place-fret 3 14 "4")
                   (place-fret 2 12 "2" darkgreen)
                   (place-fret 2 14 "4")
                   (place-fret 1 11 "1")
                   (place-fret 1 12 "2" red))

a-shaped-scale-f-flat-function = #'(
                   (place-fret 6 12 "1" red)
                   (place-fret 6 14 "2")
                   (place-fret 5 11 "3" blue)
                   (place-fret 5 12 "4")
                   (place-fret 5 14 "5" darkgreen)
                   (place-fret 4 11 "6")
                   (place-fret 4 13 "7")
                   (place-fret 4 14 "8/1" red)
                   (place-fret 3 11 "2")
                   (place-fret 3 13 "3" blue)
                   (place-fret 3 14 "4")
                   (place-fret 2 12 "5" darkgreen)
                   (place-fret 2 14 "6")
                   (place-fret 1 11 "7")
                   (place-fret 1 12 "8" red))

a-shaped-scale-f-flat-notes = #'(
                   (place-fret 6 12 "Fb" red)
                   (place-fret 6 14 "Gb")
                   (place-fret 5 11 "Ab" blue)
                   (place-fret 5 12 "Bbb")
                   (place-fret 5 14 "Cb" darkgreen)
                   (place-fret 4 11 "Db")
                   (place-fret 4 13 "Eb")
                   (place-fret 4 14 "Fb" red)
                   (place-fret 3 11 "Gb")
                   (place-fret 3 13 "Ab" blue)
                   (place-fret 3 14 "Bbb")
                   (place-fret 2 12 "Cb" darkgreen)
                   (place-fret 2 14 "Db")
                   (place-fret 1 11 "Eb")
                   (place-fret 1 12 "Fb" red))

\header {
  tagline = ##f
}

a-shaped-scale-f-flat = \markup \line {
  \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #a-shaped-scale-f-flat-fingers
  \hspace #2
  \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #a-shaped-scale-f-flat-function
  \hspace #2
  \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #a-shaped-scale-f-flat-notes
}

\standalone \a-shaped-scale-f-flat
