\version "2.26.0"

\include "library/fret-diagrams.ly"
\include "library/caged.ly"

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
diagram-size = #2.7

% every diagram shows six frets, so they are all the same height: the widest
% minor arpeggios span five frets, plus their empty first fret. The strings
% stop just past the last fret, as a full-length tail reads as a seventh.
% uniform-width makes them all the same width too, so the columns line up
\markup
\override #'(fret-count . 6)
\override #'(uniform-width . #t)
\override #'(fret-diagram-details . ((string-overhang . 0.3)))
\column {
  \fill-line { \huge \bold "CAGED System" }
  % each diagram already has a gap under its title, so the rows sit closer
  % together to keep the legend on the same page
  \vspace #0.5
  \line {
    \lower #8 \fontsize #6 \bold "1 "
    % the first row's titles are the column headers for the whole sheet,
    % so they are printed larger; the rows below have blank titles
    \override #'(font-size . 2)
    \line {
      \fret-diagram-with-fingers "CHORD" ##t #1 #diagram-size #c-caged-chord
      \hspace #2
      \fret-diagram-with-fingers "FUNCTION" ##t #1 #diagram-size #c-caged-function
      \hspace #2
      \fret-diagram-with-fingers "SCALE" ##t #1 #diagram-size #c-caged-scale
      \hspace #2
      \fret-diagram-with-fingers "ARPEGGIO" ##t #1 #diagram-size #c-caged-arp
      \hspace #2
      \fret-diagram-with-fingers "MINOR ARP." ##t #0 #diagram-size #c-caged-minor-arp
      \hspace #2
      \fret-diagram-with-fingers "PENTATONIC" ##t #1 #diagram-size #c-caged-pentatonic
    }
  }
  \vspace #0.5
  \line {
    \lower #8 \fontsize #6 \bold "2 "
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #a-caged-chord
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #a-caged-function
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #a-caged-scale
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #a-caged-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #a-caged-minor-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #a-caged-pentatonic
  }
  \vspace #0.5
  \line {
    \lower #8 \fontsize #6 \bold "3 "
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #g-caged-chord
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #g-caged-function
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #g-caged-scale
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #g-caged-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #g-caged-minor-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #g-caged-pentatonic
  } 
  \vspace #0.5
  \line {
    \lower #8 \fontsize #6 \bold "4 "
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #e-caged-chord
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #e-caged-function
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #e-caged-scale
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #e-caged-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #e-caged-minor-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #e-caged-pentatonic
  }
  \vspace #0.5
  \line {
    \lower #8 \fontsize #6 \bold "5 "
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #d-caged-chord
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #d-caged-function
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #d-caged-scale
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #d-caged-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #1 #diagram-size #d-caged-minor-arpeggio
    \hspace #2
    \fret-diagram-with-fingers " " ##t #0 #diagram-size #d-caged-pentatonic
  }
}

\markup {
    \vspace #2
    \line {
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
        \hspace #2
        \box {
            \column {
                \line {
                    \vcenter {
                        \fontsize #3 \bold "Chord Formulas"
                    }
                }
                \line {
                    \vcenter {
                        "Major - 1, 3, 5"
                    }
                }
                \line {
                    \vcenter {
                        "Minor - 1, b3, 5"
                    }
                }
                \line {
                    \vcenter {
                        "Dim - 1, b3, b5"
                    }
                }
            }
        }
    }
}
\markup \column {
  \vspace #2
  \fill-line { \huge \bold "Major Scale Formula" }
  \vspace #1
  \line {
    \score {
      <<
        % Guitar sounds an octave below the tab's written pitch, so the
        % standard notation is displayed transposed up an octave.
        \new Staff { \transpose c c' \formulaMusic }
      >>
      \layout {
        indent = 0
        ragged-right = ##f
      }
    }
  }
}