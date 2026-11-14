\version "2.26.0"

\include "../library/fret-diagrams.ly"

f-maj-seven = #'((place-fret 6 1 "1" red)
                   (mute 5)
                   (place-fret 4 2 "3" )
                   (place-fret 3 2 "4" darkgreen)
                   (place-fret 2 1 "2" blue)
                   (mute 1))

f-maj-seven-function = #'((place-fret 6 1 "1" red)
                   (mute 5)
                   (place-fret 4 2 "7" )
                   (place-fret 3 2 "3" darkgreen)
                   (place-fret 2 1 "5" blue)
                   (mute 1))

g-seven = #'((place-fret 6 3 "1" red)
                   (mute 5)
                   (place-fret 4 3 "2" )
                   (place-fret 3 4 "4" darkgreen)
                   (place-fret 2 3 "3" blue)
                   (mute 1))

g-seven-function = #'((place-fret 6 3 "1" red)
                   (mute 5)
                   (place-fret 4 3 "b7" )
                   (place-fret 3 4 "3" darkgreen)
                   (place-fret 2 3 "5" blue)
                   (mute 1))

g-minor-seven = #'((place-fret 6 3 "1" red)
                   (mute 5)
                   (place-fret 4 3 "3" )
                   (place-fret 3 3 "3" darkgreen)
                   (place-fret 2 3 "3" blue)
                   (mute 1))

g-minor-seven-function = #'((place-fret 6 3 "1" red)
                   (mute 5)
                   (place-fret 4 3 "b7" )
                   (place-fret 3 3 "b3")
                   (place-fret 2 3 "5" blue)
                   (mute 1))

g-flat-seven-flat-five = #'((place-fret 6 2 "2" red)
                   (mute 5)
                   (place-fret 4 2 "3" )
                   (place-fret 3 3 "4" darkgreen)
                   (place-fret 2 1 "1" blue)
                   (mute 1))

g-flat-seven-flat-five-function = #'((place-fret 6 2 "1" red)
                   (mute 5)
                   (place-fret 4 2 "b7" )
                   (place-fret 3 3 "3" darkgreen)
                   (place-fret 2 1 "b5" blue)
                   (mute 1))

b-seven = #'((mute 6)
                   (place-fret 5 2 "2" red)
                   (place-fret 4 1 "1" darkgreen)
                   (place-fret 3 2 "3")
                   (open 2)
                   (mute 1))

b-seven-function = #'((mute 6)
                   (place-fret 5 2 "1" red)
                   (place-fret 4 1 "3" darkgreen)
                   (place-fret 3 2 "b7")
                   (open 2)
                   (mute 1))

f-sharp-minor-seven = #'((place-fret 6 2 "1" red)
                   (mute 5)
                   (place-fret 4 2 "3" )
                   (place-fret 3 2 "3" darkgreen)
                   (place-fret 2 2 "3" blue)
                   (mute 1))

f-sharp-minor-seven-function = #'((place-fret 6 2 "1" red)
                   (mute 5)
                   (place-fret 4 2 "b7" )
                   (place-fret 3 2 "b3")
                   (place-fret 2 2 "5" blue)
                   (mute 1))

d-seven = #'((mute 6)
                   (place-fret 5 2 "2" red)
                   (mute 5)
                   (open 4)
                   (place-fret 3 2 "3" darkgreen)
                   (place-fret 2 1 "1")
                   (place-fret 1 2 "4"))

d-seven-function = #'((mute 6)
                   (place-fret 5 2 "1" red)
                   (place-fret 4 1 "3" darkgreen)
                   (place-fret 3 2 "b7")
                   (open 2)
                   (mute 1))

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 5\mm
  right-margin = 5\mm
}

% the C shape has more frets in view than the others, so it needs a larger diagram
diagram-size = #4

\markup \column {
  \fill-line { \huge \bold "Girl from Impanema Chords" }
  \vspace #2
  \fill-line {
    \line {
      \fret-diagram-with-fingers "FMaj7 - Pattern" ##f #1 #diagram-size #f-maj-seven
      \hspace #2
      \fret-diagram-with-fingers "FMaj7 - Function" ##f #1 #diagram-size #f-maj-seven-function
      \hspace #2
      \fret-diagram-with-fingers "G7 - Pattern" ##f #1 #diagram-size #g-seven
      \hspace #2
      \fret-diagram-with-fingers "G7 - Function" ##f #1 #diagram-size #g-seven-function
      \hspace #2
    }
  }
  \vspace #2
  \fill-line {
    \line {
      \fret-diagram-with-fingers "G Minor 7 - Pattern" ##f #1 #diagram-size #g-minor-seven
      \hspace #2
      \fret-diagram-with-fingers "G Minor 7 - Function" ##f #1 #diagram-size #g-minor-seven-function
      \hspace #2
      \fret-diagram-with-fingers "Gb7(b5) - Pattern" ##f #1 #diagram-size #g-flat-seven-flat-five
      \hspace #2
      \fret-diagram-with-fingers "Gb7(b5) - Function" ##f #1 #diagram-size #g-flat-seven-flat-five-function
      \hspace #2
    }
  }
  \vspace #2
  \fill-line {
    \line {
      \fret-diagram-with-fingers "B7 - Pattern" ##f #1 #diagram-size #b-seven
      \hspace #2
      \fret-diagram-with-fingers "B7 - Function" ##f #1 #diagram-size #b-seven-function
      \hspace #2
      \fret-diagram-with-fingers "F#-7 - Pattern" ##f #1 #diagram-size #f-sharp-minor-seven
      \hspace #2
      \fret-diagram-with-fingers "F#-7 - Function" ##f #1 #diagram-size #f-sharp-minor-seven-function
      \hspace #2
    }
  }
  \vspace #2
  \fill-line {
    \line {
      \fret-diagram-with-fingers "D7 - Pattern" ##f #1 #diagram-size #d-seven
      \hspace #2
      \fret-diagram-with-fingers "D7 - Function" ##f #1 #diagram-size #d-seven-function
    }
  }
}