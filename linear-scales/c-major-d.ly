\version "2.26.0"

\include "../library/linear-scales.ly"

c-major-d = \linearScale "4" "2 (D)" {
  d1\4 e\4 f\4 g\4 a\4 b\4 c'\4 d'\4 e'\4 f'\4
  \land c'\4^\landing \bar "|."
} \lyricmode { "0" "1" "2" "4" "1" "3" "4" "1" "3" "4" "4" }
