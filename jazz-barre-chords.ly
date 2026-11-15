\version "2.26.0"

\include "library/fret-diagrams.ly"

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 5\mm
  right-margin = 5\mm
}

% each chord file draws its diagram at diagram-size; 3.5 is as large as
% all five rows will go on one page, on both A4 and Letter
diagram-size = #3.5

\include "chords/barre/e-major.ly"
\include "chords/barre/e-minor.ly"
\include "chords/barre/a-major.ly"
\include "chords/barre/a-minor.ly"
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

\markup \fill-line { \huge \bold "Jazz Barre Chords" }

\markup \column {
  \vspace #1
  \fill-line { \large \bold "6th String Root" }
  \vspace #0.5
  \fill-line {
    \line {
      \e-major
      \hspace #2
      \e-minor
    }
  }
  \vspace #0.5
  \fill-line {
    \line {
      \e-major-seventh
      \hspace #2
      \e-dominant-seventh
      \hspace #2
      \e-minor-seventh
      \hspace #2
      \e-diminished-seventh
    }
  }
}

\markup \column {
  \vspace #1
  \fill-line { \large \bold "5th String Root" }
  \vspace #0.5
  \fill-line {
    \line {
      \a-major
      \hspace #2
      \a-minor
    }
  }
  \vspace #0.5
  \fill-line {
    \line {
      \a-major-seventh
      \hspace #2
      \a-dominant-seventh
      \hspace #2
      \a-minor-seventh
      \hspace #2
      \a-diminished-seventh
    }
  }
}

\markup \column {
  \vspace #1
  \fill-line { \large \bold "4th String Root" }
  \vspace #0.5
  \fill-line {
    \line {
      \d-major-seventh
      \hspace #2
      \d-dominant-seventh
      \hspace #2
      \d-minor-seventh
      \hspace #2
      \d-diminished-seventh
    }
  }
}
