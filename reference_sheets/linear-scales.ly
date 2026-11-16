\version "2.26.0"

\include "../library/footer.ly"

\header {
  tagline = ##f
}

#(set-global-staff-size 18)

\paper {
  top-margin = 8
  bottom-margin = 8
  % one page, with the lines spread out to fill it
  page-count = 1
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  markup-system-spacing.basic-distance = #10
  score-markup-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #11
}

% Whole notes in free time: no meter, no bar lines except the ones asked for.
\layout {
  indent = 22
  short-indent = 22
  ragged-right = ##f
  \context {
    \Score
    \omit BarNumber
  }
  \context {
    \Staff
    \omit TimeSignature
    % each line stays on one string, named in the margin instead
    \omit StringNumber
  }
  \context {
    \TabStaff
    \omit TimeSignature
  }
  \context {
    \Lyrics
    \consists "Instrument_name_engraver"
  }
}

half = \markup \with-color #red \bold "½"

% ---------------------------------------------------------------------------
% Major scale formula
% ---------------------------------------------------------------------------

formulaMusic = \relative c' {
  \cadenzaOn
  c1 d e f g a b c
  \bar "|."
}

% One silent note halfway between each pair of scale notes, so the step
% sizes sit in the gaps rather than under a note.
formulaGaps = {
  \cadenzaOn
  s2 c'1 c' c' c' c' c' c' s2
}

\markup \column {
  \fill-line { \huge \bold "Major Scale Formula:  1  1  ½   1  1  1  ½" }
  \vspace #0.5
  \fill-line {
    \line {
      "Half steps occur between scale degrees"
      \with-color #red \bold "3 + 4"
      "and"
      \with-color #red \bold "7 + 8"
    }
  }
}

\score {
  <<
    \new Staff = "formula" <<
      \new Voice = "scale" \formulaMusic
      \new NullVoice = "gaps" \formulaGaps
    >>
    \new Lyrics \with {
      alignAboveContext = "formula"
      instrumentName = "Steps"
    } \lyricsto "gaps" { "1" "1" \half "1" "1" "1" \half }
    \new Lyrics \with { instrumentName = "Note" }
      \lyricsto "scale" { C D E F G A B C }
    \new Lyrics \with { instrumentName = "Scale degree" }
      \lyricsto "scale" { "1 (8)" "2" "3" "4" "5" "6" "7" "8 (1)" }
  >>
}

% ---------------------------------------------------------------------------
% Linear scales: the C major scale up one string at a time
% ---------------------------------------------------------------------------

\include "../linear-scales/c-major-high-e.ly"
\include "../linear-scales/c-major-b.ly"
\include "../linear-scales/c-major-g.ly"
\include "../linear-scales/c-major-d.ly"
\include "../linear-scales/c-major-a.ly"
\include "../linear-scales/c-major-low-e.ly"

\markup \column {
  \vspace #1
  \fill-line { \huge \bold "Linear Scales in C Major" }
  \vspace #0.5
  \fill-line {
    "Mapping out the white notes: up each string from the open note, then land on C."
  }
}

\c-major-high-e
\c-major-b
\c-major-g
\c-major-d
\c-major-a
\c-major-low-e
