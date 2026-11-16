\version "2.26.0"

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

% One line of the sheet: the scale up a single string from its open note,
% with left-hand fingers under the notes and frets in the tab. The margin
% names the string and the scale degree (S.D.) of its open note.
linearScale =
#(define-scheme-function (string degree music fingers)
   (markup? markup? ly:music? ly:music?)
   #{
     \score {
       <<
         % Guitar sounds an octave below the tab's written pitch, so the
         % standard notation is displayed transposed up an octave.
         \new Staff \with {
           instrumentName = \markup \line {
             \circle \bold #string "S.D." #degree
           }
         } { \new Voice = "scale" { \cadenzaOn \transpose c c' $music } }
         \new Lyrics \with { instrumentName = "Finger" }
           \lyricsto "scale" { #fingers }
         \new TabStaff { \cadenzaOn $music }
       >>
     }
   #})

% Each line climbs the string, then drops back to land on the tonic.
land = { \bar "||" \once \override TextScript.padding = #1.5 }
landing = \markup \italic "land on C"

\markup \column {
  \vspace #1
  \fill-line { \huge \bold "Linear Scales in C Major" }
  \vspace #0.5
  \fill-line {
    "Mapping out the white notes: up each string from the open note, then land on C."
  }
}

\linearScale "1" "3 (E)" {
  e'1\1 f'\1 g'\1 a'\1 b'\1 c''\1 d''\1 e''\1 f''\1
  \land c''\1^\landing \bar "|."
} \lyricmode { "0" "1" "3" "1" "3" "4" "1" "3" "4" "4" }

\linearScale "2" "7 (B)" {
  b1\2 c'\2 d'\2 e'\2 f'\2 g'\2 a'\2 b'\2 c''\2
  \land c'\2^\landing \bar "|."
} \lyricmode { "0" "1" "3" "1" "2" "4" "1" "3" "4" "1" }

\linearScale "3" "5 (G)" {
  g1\3 a\3 b\3 c'\3 d'\3 e'\3 f'\3 g'\3 a'\3
  \land c'\3^\landing \bar "|."
} \lyricmode { "0" "1" "3" "4" "1" "3" "4" "1" "3" "4" }

\linearScale "4" "2 (D)" {
  d1\4 e\4 f\4 g\4 a\4 b\4 c'\4 d'\4 e'\4 f'\4
  \land c'\4^\landing \bar "|."
} \lyricmode { "0" "1" "2" "4" "1" "3" "4" "1" "3" "4" "4" }

\linearScale "5" "6 (A)" {
  a,1\5 b,\5 c\5 d\5 e\5 f\5 g\5 a\5 b\5 c'\5
  \land c\5^\landing \bar "|."
} \lyricmode { "0" "1" "2" "4" "1" "2" "4" "1" "3" "4" "2" }

\linearScale "6" "3 (E)" {
  e,1\6 f,\6 g,\6 a,\6 b,\6 c\6 d\6 e\6 f\6
  \land c\6^\landing \bar "|."
} \lyricmode { "0" "1" "3" "1" "3" "4" "1" "3" "4" "4" }
