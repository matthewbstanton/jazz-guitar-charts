\version "2.26.0"

\include "../library/fret-diagrams.ly"

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 5\mm
  right-margin = 5\mm
  % keep every page's chords starting at the top
  ragged-bottom = ##t
  print-page-number = ##f
}

% each chord file draws its diagram at diagram-size; 5.6 is as large as
% three rows will go on a page, on both A4 and Letter
diagram-size = #5.6

\include "../chords/barre/e-major.ly"
\include "../chords/barre/e-minor.ly"
\include "../chords/barre/e-major7.ly"
\include "../chords/barre/e-minor7.ly"
\include "../chords/barre/e-dominant7.ly"
\include "../chords/barre/e-diminished7.ly"
\include "../chords/barre/a-major.ly"
\include "../chords/barre/a-minor.ly"
\include "../chords/barre/a-major7.ly"
\include "../chords/barre/a-minor7.ly"
\include "../chords/barre/a-dominant7.ly"
\include "../chords/barre/a-diminished7.ly"
\include "../chords/barre/d-major.ly"
\include "../chords/barre/d-minor.ly"
\include "../chords/barre/d-major7.ly"
\include "../chords/barre/d-minor7.ly"
\include "../chords/barre/d-dominant7.ly"
\include "../chords/barre/d-diminished7.ly"

% one page per root string: major chords down the left, minor down the right
\markup \column {
  \fill-line { \fontsize #5 \bold "Jazz Barre Chords" }
  \vspace #0.5
  \fill-line { \fontsize #3 \bold "6th String Root" }
  \vspace #1.5
  \fill-line {
    \line {
      \e-major
      \hspace #6
      \e-minor
    }
  }
  \vspace #1.5
  \fill-line {
    \line {
      \e-major-seventh
      \hspace #6
      \e-minor-seventh
    }
  }
  \vspace #1.5
  \fill-line {
    \line {
      \e-dominant-seventh
      \hspace #6
      \e-diminished-seventh
    }
  }
}

\pageBreak

\markup \column {
  \fill-line { \fontsize #5 \bold "Jazz Barre Chords" }
  \vspace #0.5
  \fill-line { \fontsize #3 \bold "5th String Root" }
  \vspace #1.5
  \fill-line {
    \line {
      \a-major
      \hspace #6
      \a-minor
    }
  }
  \vspace #1.5
  \fill-line {
    \line {
      \a-major-seventh
      \hspace #6
      \a-minor-seventh
    }
  }
  \vspace #1.5
  \fill-line {
    \line {
      \a-dominant-seventh
      \hspace #6
      \a-diminished-seventh
    }
  }
}

\pageBreak

\markup \column {
  \fill-line { \fontsize #5 \bold "Jazz Barre Chords" }
  \vspace #0.5
  \fill-line { \fontsize #3 \bold "4th String Root" }
  \vspace #1.5
  \fill-line {
    \line {
      \d-major
      \hspace #6
      \d-minor
    }
  }
  \vspace #1.5
  \fill-line {
    \line {
      \d-major-seventh
      \hspace #6
      \d-minor-seventh
    }
  }
  \vspace #1.5
  \fill-line {
    \line {
      \d-dominant-seventh
      \hspace #6
      \d-diminished-seventh
    }
  }
}
