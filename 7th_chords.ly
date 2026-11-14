\version "2.26.0"

\include "library/fret-diagrams.ly"

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
}

% 6th string root
f-major-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 13 "3")
                   (place-fret 3 13 "4")
                   (place-fret 2 12 "2")
                   (mute 1))

f-dominant-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 12 "2")
                   (place-fret 3 13 "4")
                   (place-fret 2 12 "3")
                   (mute 1))

f-minor-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 12 "2")
                   (place-fret 3 12 "3")
                   (place-fret 2 12 "4")
                   (mute 1))

f-diminished-seventh-sixth-root = #'((place-fret 6 12 "1" red)
                   (mute 5)
                   (place-fret 4 12 "3")
                   (place-fret 3 12 "4")
                   (place-fret 2 11 "2")
                   (mute 1))

% 5th string root
f-major-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3")
                   (place-fret 3 9 "2")
                   (place-fret 2 10 "4")
                   (place-fret 1 8 "1"))

f-dominant-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3")
                   (place-fret 3 8 "1")
                   (place-fret 2 10 "4")
                   (place-fret 1 8 "1"))

f-minor-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 10 "3")
                   (place-fret 3 8 "1")
                   (place-fret 2 9 "2")
                   (place-fret 1 8 "1"))

f-diminished-seventh-fifth-root = #'((mute 6)
                   (place-fret 5 8 "1" red)
                   (place-fret 4 9 "3")
                   (place-fret 3 8 "2")
                   (place-fret 2 9 "4")
                   (mute 1))

% 4th string root
f-major-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "2")
                   (place-fret 2 17 "3")
                   (place-fret 1 17 "4"))

f-dominant-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "3")
                   (place-fret 2 16 "2")
                   (place-fret 1 17 "4"))

f-minor-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "4")
                   (place-fret 2 16 "2")
                   (place-fret 1 16 "3"))

f-diminished-seventh-fourth-root = #'((mute 6)
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 16 "2")
                   (place-fret 2 16 "3")
                   (place-fret 1 16 "4"))

diagram-size = #3.5

\markup \column {
  \fill-line { \huge \bold "7th Chords" }
  \vspace #1
  % a single item in a fill-line is centred on the page
  \fill-line {
    \column {
      \line {
        \lower #8 \fontsize #6 \bold "6 "
        \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-sixth-root #'("R" "" "Δ7" "Δ3" "p5" "")
        \hspace #2
        \fret-diagram-with-footer "DOMINANT 7" ##t #1 #diagram-size #f-dominant-seventh-sixth-root #'("R" "" "b7" "Δ3" "p5" "")
        \hspace #2
        \fret-diagram-with-footer "MINOR 7" ##t #1 #diagram-size #f-minor-seventh-sixth-root #'("R" "" "b7" "b3" "p5" "")
        \hspace #2
        \fret-diagram-with-footer "DIMINISHED 7" ##t #0 #diagram-size #f-diminished-seventh-sixth-root #'("R" "" "b7" "b3" "b5" "")
      }
      \vspace #1
      \line {
        \lower #8 \fontsize #6 \bold "5 "
        \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-fifth-root #'("" "R" "p5" "Δ7" "Δ3" "p5")
        \hspace #2
        \fret-diagram-with-footer "DOMINANT 7" ##t #1 #diagram-size #f-dominant-seventh-fifth-root #'("" "R" "p5" "b7" "Δ3" "p5")
        \hspace #2
        \fret-diagram-with-footer "MINOR 7" ##t #1 #diagram-size #f-minor-seventh-fifth-root #'("" "R" "p5" "b7" "b3" "p5")
        \hspace #2
        \fret-diagram-with-footer "DIMINISHED 7" ##t #1 #diagram-size #f-diminished-seventh-fifth-root #'("" "R" "b5" "b7" "b3" "")
      }
      \vspace #1
      \line {
        \lower #8 \fontsize #6 \bold "4 "
        \fret-diagram-with-footer "MAJOR 7" ##t #1 #diagram-size #f-major-seventh-fourth-root #'("" "" "R" "p5" "Δ7" "Δ3")
        \hspace #2
        \fret-diagram-with-footer "DOMINANT 7" ##t #1 #diagram-size #f-dominant-seventh-fourth-root #'("" "" "R" "p5" "b7" "Δ3")
        \hspace #2
        \fret-diagram-with-footer "MINOR 7" ##t #1 #diagram-size #f-minor-seventh-fourth-root #'("" "" "R" "p5" "b7" "b3")
        \hspace #2
        \fret-diagram-with-footer "DIMINISHED 7" ##t #1 #diagram-size #f-diminished-seventh-fourth-root #'("" "" "R" "b5" "b7" "b3")
      }
      \vspace #1
    }
  }
}
