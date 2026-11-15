\version "2.26.0"

\include "library/fret-diagrams.ly"

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
}

% each chord file draws its diagram at diagram-size
diagram-size = #3.5

\include "chords/barre/e-major7.ly"
\include "chords/barre/e-dominant7.ly"
\include "chords/barre/e-minor7.ly"
\include "chords/barre/e-diminished7.ly"
\include "chords/barre/a-major7.ly"
\include "chords/barre/a-dominant7.ly"
\include "chords/barre/a-minor7.ly"
\include "chords/barre/a-diminished7.ly"
\include "chords/barre/d-major7.ly"
\include "chords/barre/d-dominant7.ly"
\include "chords/barre/d-minor7.ly"
\include "chords/barre/d-diminished7.ly"

\markup \column {
  \fill-line { \huge \bold "7th Chords" }
  \vspace #1
  % a single item in a fill-line is centred on the page
  \fill-line {
    \column {
      \line {
        \lower #8 \fontsize #6 \bold "6 "
        \e-major-seventh
        \hspace #2
        \e-dominant-seventh
        \hspace #2
        \e-minor-seventh
        \hspace #2
        \e-diminished-seventh
      }
      \vspace #1
      \line {
        \lower #8 \fontsize #6 \bold "5 "
        \a-major-seventh
        \hspace #2
        \a-dominant-seventh
        \hspace #2
        \a-minor-seventh
        \hspace #2
        \a-diminished-seventh
      }
      \vspace #1
      \line {
        \lower #8 \fontsize #6 \bold "4 "
        \d-major-seventh
        \hspace #2
        \d-dominant-seventh
        \hspace #2
        \d-minor-seventh
        \hspace #2
        \d-diminished-seventh
      }
      \vspace #1
    }
  }
}
