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

% each chord file draws its diagram at diagram-size
diagram-size = #4

\include "chords/barre/e-major-v2.ly"
\include "chords/barre/e-minor-v2.ly"
\include "chords/barre/a-major.ly"
\include "chords/barre/a-minor.ly"

\markup \column {
  \fill-line { \huge \bold "Barre Chords" }
  \vspace #2
  \fill-line { \line { \bold "E-Shaped" } }
  \fill-line {
    \line {
      \e-major-vtwo
      \hspace #2
      \e-minor-vtwo
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
}
