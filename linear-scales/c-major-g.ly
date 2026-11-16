\version "2.26.0"

\include "../library/linear-scales.ly"

c-major-g = \linearScale "3" "5 (G)" {
  g1\3 a\3 b\3 c'\3 d'\3 e'\3 f'\3 g'\3 a'\3
  \land c'\3^\landing \bar "|."
} \lyricmode { "0" "1" "3" "4" "1" "3" "4" "1" "3" "4" }
