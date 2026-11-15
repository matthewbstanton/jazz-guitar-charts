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
}

% each chord file draws its diagram at diagram-size
diagram-size = #4

\include "../chords/barre/e-major.ly"
\include "../chords/barre/e-minor.ly"
\include "../chords/barre/a-major.ly"
\include "../chords/barre/a-minor.ly"
\include "../chords/barre/d-major.ly"
\include "../chords/barre/d-minor.ly"

\markup \column {
  \fill-line { \huge \bold "Barre Chords" }
  \vspace #2
  \fill-line { \line { \bold "E-Shaped" } }
  \fill-line {
    \line {
      \e-major
      \hspace #2
      \e-minor
    }
  }
  \vspace #2
  \fill-line { \line { \bold "A-Shaped" } }
  \fill-line {
    \line {
      \a-major
      \hspace #2
      \a-minor
    }
  }
  \vspace #2
  \fill-line { \line { \bold "D-Shaped" } }
  \fill-line {
    \line {
      \d-major
      \hspace #2
      \d-minor
    }
  }
}
