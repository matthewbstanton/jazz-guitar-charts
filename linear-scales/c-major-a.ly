\version "2.26.0"

\include "../library/linear-scales.ly"

c-major-a = \linearScale "5" "6 (A)" {
  a,1\5 b,\5 c\5 d\5 e\5 f\5 g\5 a\5 b\5 c'\5
  \land c\5^\landing \bar "|."
} \lyricmode { "0" "1" "2" "4" "1" "2" "4" "1" "3" "4" "2" }
