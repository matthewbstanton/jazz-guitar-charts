\version "2.26.0"

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
