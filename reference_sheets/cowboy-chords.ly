\version "2.26.0"

\include "../library/fret-diagrams.ly"
\include "../library/footer.ly"

\header {
  tagline = ##f
}

\paper {
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 5\mm
  right-margin = 5\mm
}

% each chord file draws its diagram at diagram-size; this is as big as a row
% of four goes across the page
diagram-size = #4.6

\include "../chords/cowboy/a-major-a.ly"
\include "../chords/cowboy/a-minor-a.ly"
\include "../chords/cowboy/d-major-d.ly"
\include "../chords/cowboy/d-minor-d.ly"
\include "../chords/cowboy/e-major-e.ly"
\include "../chords/cowboy/e-minor-e.ly"
\include "../chords/cowboy/c-major-c.ly"
\include "../chords/cowboy/g-major-g.ly"

\markup \override #'(uniform-width . #t) \column {
  \fill-line { \huge \bold "Cowboy Chords" }
  \vspace #1
  \fill-line {
    \line {
      \a-major-a-open
      \hspace #2
      \a-minor-a-open
      \hspace #2
      \d-major-d-open
      \hspace #2
      \d-minor-d-open
    }
  }
  \vspace #1
  \fill-line {
    \line {
      \e-major-e-open
      \hspace #2
      \e-minor-e-open
      \hspace #2
      \c-major-c-open
      \hspace #2
      \g-major-g-open
    }
  }
}
