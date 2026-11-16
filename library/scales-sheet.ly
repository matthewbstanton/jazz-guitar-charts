% The body of a major scale sheet: the scale's diagrams, then practice
% patterns in notation and tab. The patterns are written in G and transposed,
% so the sheet that \includes this sets three things first:
%   scale-name      the key's name, for the title
%   scale-root      the root on the sixth string, e.g. g, or bes,
%   scale-diagrams  the markup for the key's scale diagrams

\header {
  tagline = ##f
}

linearMusic = \transpose g, \scale-root \relative g, {
  \key g \major 
  g4\6 a\6 b\5 c\5 d\5 e\4 fis\4 g\4 
  a\3 b\3 c\3 d\2 e\2 fis\1 g\1

  fis\1 e\2 d\2 c\3 b\3 a\3 g\4 
  fis\4 e\4 d\5 c\5 b\5 a\6 g\6
}

diatonicThirdsMusic = \transpose g, \scale-root \relative g, {
  \key g \major \time 2/4
  g4\6 b\5  a\6 c\5  b\5 d\5  c\5 e\4  d\5 fis\4  e\4 g\4   
  fis\4 a\3  g\4 b\3  a\3 c\3  b\3 d\2  c\3 e\2  d\2 fis\1  e\2 g\1

  g\1 e\2  fis\1 d\2  e\2 c\3  d\2 b\3  c\3 a\3  b\3 g\4  a\3 fis\4  
  g\4 e\4  fis\4 d\5  e\4 c\5  d\5 b\5  c\5 a\6  b\5 g\6
}

groupsOfFourMusic = \transpose g, \scale-root \relative g, {
  \key g \major \time 4/4
  g4\6 a\6 b\5 c\5  a\6 b\5 c\5 d\5  b\5 c\5 d\5 e\4  c\5 d\5 e\4 fis\4  d\5 e\4 fis\4 g\4
  e\4 fis\4 g\4 a\3  fis\4 g\4 a\3 b\3  g\4 a\3 b\3 c\3  a\3 b\3 c\3 d\2  b\3 c\3 d\2 e\2  c\3 d\2 e\2 fis\1  d\2 e\2 fis\1 g\1

  g\1 fis\1 e\2 d\2  fis\1 e\2 d\2 c\3  e\2 d\2 c\3 b\3  d\2 c\3 b\3 a\3  c\3 b\3 a\3 g\4  b\3 a\3 g\4 fis\4  a\3 g\4 fis\4 e\4
  g\4 fis\4 e\4 d\5  fis\4 e\4 d\5 c\5  e\4 d\5 c\5 b\5  d\5 c\5 b\5 a\6  c\5 b\5 a\6 g\6
}

groupsOfThreeMusic = \transpose g, \scale-root \relative g, {
  \key g \major \time 3/4
  g4\6 a\6 b\5  a\6 b\5 c\5  b\5 c\5 d\5  c\5 d\5 e\4  d\5 e\4 fis\4  e\4 fis\4 g\4
  fis\4 g\4 a\3  g\4 a\3 b\3  a\3 b\3 c\3  b\3 c\3 d\2  c\3 d\2 e\2  d\2 e\2 fis\1  e\2 fis\1 g\1

  g\1 fis\1 e\2  fis\1 e\2 d\2  e\2 d\2 c\3  d\2 c\3 b\3  c\3 b\3 a\3  b\3 a\3 g\4
  a\3 g\4 fis\4  g\4 fis\4 e\4  fis\4 e\4 d\5  e\4 d\5 c\5  d\5 c\5 b\5  c\5 b\5 a\6  b\5 a\6 g\6
}

diatonicTriadsMusic = \transpose g, \scale-root \relative g, {
  \key g \major \time 3/4
  g4\6 b\5 d\5  a\6 c\5 e\4  b\5 d\5 fis\4  c\5 e\4 g\4  d\5 fis\4 a\3  e\4 g\4 b\3
  fis\4 a\3 c\3  g\4 b\3 d\2  a\3 c\3 e\2  b\3 d\2 fis\1  c\3 e\2 g\1

  g\1 e\2 c\3  fis\1 d\2 b\3  e\2 c\3 a\3  d\2 b\3 g\4  c\3 a\3 fis\4  b\3 g\4 e\4  a\3 fis\4 d\5  
  g\4 e\4 c\5  fis\4 d\5 b\5  e\4 c\5 a\6  d\5 b\5 g\6
}

\markup \column {
  \fill-line { \huge \bold #(string-append scale-name " Major Scale") }
  \fill-line {
    \scale-diagrams
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
}

% Each pattern is a heading followed by its score, at the top level rather
% than inside one page-sized \markup, so the pages break wherever the
% patterns happen to fit: the higher keys need more room than the lower ones.

\markup \column {
  \vspace #2
  \line { \huge \bold "Linear Scale" }
  \line { "Move sequentially straight up the scale without skipping or repeating: " }
  \line { \bold "1, 2, 3, 4, 5, 6, 7, 8/1" }
}

\noPageBreak

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

\markup \column {
  \vspace #2
  \line { \huge \bold "Diatonic Thirds" }
  \line { "Leap forward two scale steps, then drop back one: " }
  \line { \bold "1 → 3, 2 → 4, 3 → 5, 4 → 6, 5 → 7, 6 → 8." }
}

\noPageBreak

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

\markup \column {
  \vspace #2
  \line { \huge \bold "Groups of Four" }
  \line { "Move forward four linear steps, then reset to the second note:" }
  \line { \bold "1-2-3-4, 2-3-4-5, 3-4-5-6, 4-5-6-7" }
}

\noPageBreak

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

\markup \column {
  \vspace #2
  \line { \huge \bold "Groups of Three" }
  \line { "Move forward three linear steps, then reset to the second note:" }
  \line { \bold "1-2-3, 2-3-4, 3-4-5, 4-5-6" }
}

\noPageBreak

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

\markup \column {
  \vspace #2
  \line { \huge \bold "Diatonic Triads" }
  \line { "Stack alternating scale steps to build 3-note chords:" }
  \line { \bold "1-3-5, 2-4-6, 3-5-7, 4-6-8" }
}

\noPageBreak

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
