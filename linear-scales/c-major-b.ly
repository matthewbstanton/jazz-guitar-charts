\version "2.26.0"

\include "../library/linear-scales.ly"

c-major-b = \linearScale "2" "7 (B)" {
  b1\2 c'\2 d'\2 e'\2 f'\2 g'\2 a'\2 b'\2 c''\2
  \land c'\2^\landing \bar "|."
} \lyricmode { "0" "1" "3" "1" "2" "4" "1" "3" "4" "1" }
