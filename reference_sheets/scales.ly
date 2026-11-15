\version "2.26.0"
\include "../library/fret-diagrams.ly"

\header {
  tagline = ##f
}

diagram-size = #4.0

e-caged-scale-fingers = #'(
                   (place-fret 6 3 "2" red)
                   (place-fret 6 5 "4")
                   (place-fret 5 2 "1" blue)
                   (place-fret 5 3 "2")
                   (place-fret 5 5 "4" darkgreen)
                   (place-fret 4 2 "1")
                   (place-fret 4 4 "3")
                   (place-fret 4 5 "4" red)
                   (place-fret 3 2 "1")
                   (place-fret 3 4 "3" blue)
                   (place-fret 3 5 "4")
                   (place-fret 2 3 "2" darkgreen)
                   (place-fret 2 5 "4")
                   (place-fret 1 2 "1")
                   (place-fret 1 3 "2" red))

e-caged-scale-function = #'(
                   (place-fret 6 3 "1" red)
                   (place-fret 6 5 "2")
                   (place-fret 5 2 "3" blue)
                   (place-fret 5 3 "4")
                   (place-fret 5 5 "5" darkgreen)
                   (place-fret 4 2 "6")
                   (place-fret 4 4 "7")
                   (place-fret 4 5 "8/1" red)
                   (place-fret 3 2 "2")
                   (place-fret 3 4 "3" blue)
                   (place-fret 3 5 "4")
                   (place-fret 2 3 "5" darkgreen)
                   (place-fret 2 5 "6")
                   (place-fret 1 2 "7")
                   (place-fret 1 3 "8" red))

e-caged-scale-notes = #'(
                   (place-fret 6 3 "G" red)
                   (place-fret 6 5 "A")
                   (place-fret 5 2 "B" blue)
                   (place-fret 5 3 "C")
                   (place-fret 5 5 "D" darkgreen)
                   (place-fret 4 2 "E")
                   (place-fret 4 4 "F#")
                   (place-fret 4 5 "G" red)
                   (place-fret 3 2 "A")
                   (place-fret 3 4 "B" blue)
                   (place-fret 3 5 "C")
                   (place-fret 2 3 "D" darkgreen)
                   (place-fret 2 5 "E")
                   (place-fret 1 2 "F#")
                   (place-fret 1 3 "G" red))


linearMusic = \relative g, {
  \key g \major 
  g4\6 a\6 b\5 c\5 d\5 e\4 fis\4 g\4 
  a\3 b\3 c\3 d\2 e\2 fis\1 g\1

  fis\1 e\2 d\2 c\3 b\3 a\3 g\4 
  fis\4 e\4 d\5 c\5 b\5 a\6 g\6
}

diatonicThirdsMusic = \relative g, {
  \key g \major \time 2/4
  g4\6 b\5  a\6 c\5  b\5 d\5  c\5 e\4  d\5 fis\4  e\4 g\4   
  fis\4 a\3  g\4 b\3  a\3 c\3  b\3 d\2  c\3 e\2  d\2 fis\1  e\2 g\1

  g\1 e\2  fis\1 d\2  e\2 c\3  d\2 b\3  c\3 a\3  b\3 g\4  a\3 fis\4  
  g\4 e\4  fis\4 d\5  e\4 c\5  d\5 b\5  c\5 a\6  b\5 g\6
}

groupsOfFourMusic = \relative g, {
  \key g \major \time 4/4
  g4\6 a\6 b\5 c\5  a\6 b\5 c\5 d\5  b\5 c\5 d\5 e\4  c\5 d\5 e\4 fis\4  d\5 e\4 fis\4 g\4
  e\4 fis\4 g\4 a\3  fis\4 g\4 a\3 b\3  g\4 a\3 b\3 c\3  a\3 b\3 c\3 d\2  b\3 c\3 d\2 e\2  c\3 d\2 e\2 fis\1  d\2 e\2 fis\1 g\1

  g\1 fis\1 e\2 d\2  fis\1 e\2 d\2 c\3  e\2 d\2 c\3 b\3  d\2 c\3 b\3 a\3  c\3 b\3 a\3 g\4  b\3 a\3 g\4 fis\4  a\3 g\4 fis\4 e\4
  g\4 fis\4 e\4 d\5  fis\4 e\4 d\5 c\5  e\4 d\5 c\5 b\5  d\5 c\5 b\5 a\6  c\5 b\5 a\6 g\6
}

groupsOfThreeMusic = \relative g, {
  \key g \major \time 3/4
  g4\6 a\6 b\5  a\6 b\5 c\5  b\5 c\5 d\5  c\5 d\5 e\4  d\5 e\4 fis\4  e\4 fis\4 g\4
  fis\4 g\4 a\3  g\4 a\3 b\3  a\3 b\3 c\3  b\3 c\3 d\2  c\3 d\2 e\2  d\2 e\2 fis\1  e\2 fis\1 g\1

  g\1 fis\1 e\2  fis\1 e\2 d\2  e\2 d\2 c\3  d\2 c\3 b\3  c\3 b\3 a\3  b\3 a\3 g\4
  a\3 g\4 fis\4  g\4 fis\4 e\4  fis\4 e\4 d\5  e\4 d\5 c\5  d\5 c\5 b\5  c\5 b\5 a\6  b\5 a\6 g\6
}

diatonicTriadsMusic = \relative g, {
  \key g \major \time 3/4
  g4\6 b\5 d\5  a\6 c\5 e\4  b\5 d\5 fis\4  c\5 e\4 g\4  d\5 fis\4 a\3  e\4 g\4 b\3
  fis\4 a\3 c\3  g\4 b\3 d\2  a\3 c\3 e\2  b\3 d\2 fis\2  c\3 e\2 g\1

  g\1 e\2 c\3  fis\1 d\2 b\3  e\2 c\3 a\3  d\2 b\3 g\4  c\3 a\3 fis\4  b\3 g\4 e\4  a\3 fis\4 d\5  
  g\4 e\4 c\5  fis\4 d\5 b\5  e\4 c\5 a\6  d\5 b\5 g\6
}

\markup \column {
  \fill-line { \huge \bold "G Major Scale" }
  \fill-line {
    \line {
      \fret-diagram-with-fingers "Fingers" ##f #1 #diagram-size #e-caged-scale-fingers
      \hspace #2
      \fret-diagram-with-fingers "Function" ##f #1 #diagram-size #e-caged-scale-function
      \hspace #2
      \fret-diagram-with-fingers "Notes" ##f #1 #diagram-size #e-caged-scale-notes
    }
  }


    \vspace #2
    \fill-line {
      \null
      \box {
          \column {
              \line {
                  \vcenter {
                      \fontsize #3 \bold "Legend"
                  }
              }
              \line {
                  \vcenter {
                      % a text glyph (unlike a hand-drawn circle) sits on the
                      % baseline the same way the rest of the text does
                      \with-color #red \fontsize #5 "●"
                      \hspace #1
                      "Root - Name of chord"
                  }
              }
              \line {
                  \vcenter {
                      % a text glyph (unlike a hand-drawn circle) sits on the
                      % baseline the same way the rest of the text does
                      \with-color #blue \fontsize #5 "●"
                      \hspace #1
                      "Third - Major or Minor"
                  }
              }
              \line {
                  \vcenter {
                      % a text glyph (unlike a hand-drawn circle) sits on the
                      % baseline the same way the rest of the text does
                      \with-color #darkgreen \fontsize #5 "●"
                      \hspace #1
                      "Fifth - Stability"
                  }
              }
          }
      }
    }

  \vspace #2
  \line { \huge \bold "Linear Scale" }
  \line {"Move sequentially straight up the scale without skipping or repeating: "}
  \line {\bold "1, 2, 3, 4, 5, 6, 7, 8/1"}
  \line { 
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff { \transpose c c' \linearMusic }
        \new TabStaff \linearMusic
      >>
      \layout {
        indent = 0
        ragged-right = ##f
      }
    }
  }

  \vspace #2
  \line { \huge \bold "Diatonic Thirds" }
  \line { "Leap forward two scale steps, then drop back one: "}
  \line { \bold "1 → 3, 2 → 4, 3 → 5, 4 → 6, 5 → 7, 6 → 8."}
  \line {
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff { \transpose c c' \diatonicThirdsMusic }
        \new TabStaff \diatonicThirdsMusic
      >>
      \layout {
        indent = 0
        ragged-right = ##f
      }
    }
  }

}

\pageBreak

\markup \column {

  \vspace #2
  \line { \huge \bold "Groups of Four" }
  \line { "Move forward four linear steps, then reset to the second note:"}
  \line {  \bold "1-2-3-4, 2-3-4-5, 3-4-5-6, 4-5-6-7"}
  \line {
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff { \transpose c c' \groupsOfFourMusic }
        \new TabStaff \groupsOfFourMusic
      >>
      \layout {
        indent = 0
        ragged-right = ##f
      }
    }
  }
  \vspace #2
  \line { \huge \bold "Groups of Three" }
  \line { "Move forward three linear steps, then reset to the second note:"}
  \line {  \bold "1-2-3, 2-3-4, 3-4-5, 4-5-6"}
  \line {
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff { \transpose c c' \groupsOfThreeMusic }
        \new TabStaff \groupsOfThreeMusic
      >>
      \layout {
        indent = 0
        ragged-right = ##f
      }
    }
  }

}

\pageBreak

\markup \column {

  \vspace #2
  \line { \huge \bold "Diatonic Triads" }
  \line { "Stack alternating scale steps to build 3-note chords:"}
  \line {  \bold "1-3-5, 2-4-6, 3-5-7, 4-6-8"}
  \line {
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff { \transpose c c' \diatonicTriadsMusic }
        \new TabStaff \diatonicTriadsMusic
      >>
      \layout {
        indent = 0
        ragged-right = ##f
      }
    }
  }
}