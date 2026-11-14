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

% Root position and first inversion shapes are written an octave up (root
% position at fret 13 rather than 1): a shape that fits within the first six
% frets is always drawn from fret 1, leaving no control over the empty first fret.

% F major 7, strings 6-4-3-2
major-seventh-four-root = #'((place-fret 6 13 "1" red)
                   (mute 5)
                   (place-fret 4 14 "3")
                   (place-fret 3 14 "4")
                   (place-fret 2 13 "2")
                   (mute 1))

major-seventh-four-first = #'((place-fret 6 17 "2")
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "3")
                   (place-fret 2 17 "4")
                   (mute 1))

major-seventh-four-second = #'((place-fret 6 8 "3")
                   (mute 5)
                   (place-fret 4 7 "2")
                   (place-fret 3 9 "4")
                   (place-fret 2 6 "1" red)
                   (mute 1))

major-seventh-four-third = #'((place-fret 6 12 "3")
                   (mute 5)
                   (place-fret 4 10 "1")
                   (place-fret 3 10 "1" red)
                   (place-fret 2 10 "1")
                   (mute 1))

% B flat major 7, strings 5-4-3-2
major-seventh-two-root = #'((mute 6)
                   (place-fret 5 13 "1" red)
                   (place-fret 4 15 "3")
                   (place-fret 3 14 "2")
                   (place-fret 2 15 "4")
                   (mute 1))

major-seventh-two-first = #'((mute 6)
                   (place-fret 5 17 "2")
                   (place-fret 4 19 "4")
                   (place-fret 3 15 "1" red)
                   (place-fret 2 18 "3")
                   (mute 1))

major-seventh-two-second = #'((mute 6)
                   (place-fret 5 8 "2")
                   (place-fret 4 8 "2" red)
                   (place-fret 3 7 "1")
                   (place-fret 2 10 "4")
                   (mute 1))

major-seventh-two-third = #'((mute 6)
                   (place-fret 5 12 "3")
                   (place-fret 4 12 "4")
                   (place-fret 3 10 "1")
                   (place-fret 2 11 "2" red)
                   (mute 1))

% F minor 7, strings 6-4-3-2
minor-seventh-four-root = #'((place-fret 6 13 "2" red)
                   (mute 5)
                   (place-fret 4 13 "3")
                   (place-fret 3 13 "3")
                   (place-fret 2 13 "3")
                   (mute 1))

minor-seventh-four-first = #'((place-fret 6 16 "2")
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "4")
                   (place-fret 2 16 "3")
                   (mute 1))

minor-seventh-four-second = #'((place-fret 6 8 "3")
                   (mute 5)
                   (place-fret 4 6 "1")
                   (place-fret 3 8 "4")
                   (place-fret 2 6 "1" red)
                   (mute 1))

minor-seventh-four-third = #'((place-fret 6 11 "4")
                   (mute 5)
                   (place-fret 4 10 "2")
                   (place-fret 3 10 "3" red)
                   (place-fret 2 9 "1")
                   (mute 1))

% B flat minor 7, strings 5-4-3-2
minor-seventh-two-root = #'((mute 6)
                   (place-fret 5 13 "1" red)
                   (place-fret 4 15 "3")
                   (place-fret 3 13 "1")
                   (place-fret 2 14 "2")
                   (mute 1))

minor-seventh-two-first = #'((mute 6)
                   (place-fret 5 16 "2")
                   (place-fret 4 18 "3")
                   (place-fret 3 15 "1" red)
                   (place-fret 2 18 "4")
                   (mute 1))

minor-seventh-two-second = #'((mute 6)
                   (place-fret 5 8 "2")
                   (place-fret 4 8 "3" red)
                   (place-fret 3 6 "1")
                   (place-fret 2 9 "4")
                   (mute 1))

minor-seventh-two-third = #'((mute 6)
                   (place-fret 5 11 "2")
                   (place-fret 4 11 "2")
                   (place-fret 3 10 "1")
                   (place-fret 2 11 "3" red)
                   (mute 1))

% F dominant 7, strings 6-4-3-2
dominant-seventh-four-root = #'((place-fret 6 13 "1" red)
                   (mute 5)
                   (place-fret 4 13 "2")
                   (place-fret 3 14 "4")
                   (place-fret 2 13 "3")
                   (mute 1))

dominant-seventh-four-first = #'((place-fret 6 17 "3")
                   (mute 5)
                   (place-fret 4 15 "1" red)
                   (place-fret 3 17 "4")
                   (place-fret 2 16 "2")
                   (mute 1))

dominant-seventh-four-second = #'((place-fret 6 8 "3")
                   (mute 5)
                   (place-fret 4 7 "2")
                   (place-fret 3 8 "4")
                   (place-fret 2 6 "1" red)
                   (mute 1))

dominant-seventh-four-third = #'((place-fret 6 11 "2")
                   (mute 5)
                   (place-fret 4 10 "1")
                   (place-fret 3 10 "1" red)
                   (place-fret 2 10 "1")
                   (mute 1))

% B flat dominant 7, strings 5-4-3-2
dominant-seventh-two-root = #'((mute 6)
                   (place-fret 5 13 "1" red)
                   (place-fret 4 15 "3")
                   (place-fret 3 13 "1")
                   (place-fret 2 15 "4")
                   (mute 1))

dominant-seventh-two-first = #'((mute 6)
                   (place-fret 5 17 "2")
                   (place-fret 4 18 "3")
                   (place-fret 3 15 "1" red)
                   (place-fret 2 18 "4")
                   (mute 1))

dominant-seventh-two-second = #'((mute 6)
                   (place-fret 5 8 "2")
                   (place-fret 4 8 "3" red)
                   (place-fret 3 7 "1")
                   (place-fret 2 9 "4")
                   (mute 1))

dominant-seventh-two-third = #'((mute 6)
                   (place-fret 5 11 "2")
                   (place-fret 4 12 "4")
                   (place-fret 3 10 "1")
                   (place-fret 2 11 "3" red)
                   (mute 1))
diagram-size = #2.6
% distance from one row of diagrams to the next; grows with the diagram size
row-pitch = #(+ 4 (* 8.5 diagram-size))

\markup \column {
  \fill-line { \huge \bold "7th Chord Inversions" }
  \vspace #2
  % a single item in a fill-line is centred on the page
  \fill-line {
    % every diagram shows six frets, so they are all the same height: the
    % widest shape spans five frets, plus the empty first fret; the strings
    % stop just past the last fret, as a full-length tail reads as a seventh
    \override #'(fret-count . 6)
    \override #'(fret-diagram-details . ((string-overhang . 0.3)))
    % the row labels, then one block per chord quality: its symbol centred
    % over a "4" and a "2" column, which are named by the titles of the top
    % diagrams (font-size enlarges those titles). baseline-skip is the drop
    % from the symbol to the first row (5) and from one row to the next
    \override #'(baseline-skip . 5)
    \line {
      \column {
        \null
        \override #`(baseline-skip . ,row-pitch)
        \column {
          \lower #7 \fontsize #3 \bold "Root"
          \lower #7 \fontsize #3 \bold "1st"
          \lower #7 \fontsize #3 \bold "2nd"
          \lower #7 \fontsize #3 \bold "3rd"
        }
      }
      \hspace #2
      \center-column {
        \fontsize #5 \bold "Δ7"
        \override #`(baseline-skip . ,row-pitch)
        \column {
          \override #'(baseline-skip . 3)
          \override #'(padding . 2)
          \override #'(font-size . 4)
          \table #'(-1 -1) {
            \fret-diagram-with-fingers "4" ##t #1 #diagram-size #major-seventh-four-root
            \fret-diagram-with-fingers "2" ##t #1 #diagram-size #major-seventh-two-root
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #major-seventh-four-first
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #major-seventh-two-first
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #major-seventh-four-second
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #major-seventh-two-second
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #major-seventh-four-third
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #major-seventh-two-third
          }
        }
      }
      \hspace #2
      \center-column {
        \fontsize #5 \bold "-7"
        \override #`(baseline-skip . ,row-pitch)
        \column {
          \override #'(baseline-skip . 3)
          \override #'(padding . 2)
          \override #'(font-size . 4)
          \table #'(-1 -1) {
            \fret-diagram-with-fingers "4" ##t #1 #diagram-size #minor-seventh-four-root
            \fret-diagram-with-fingers "2" ##t #1 #diagram-size #minor-seventh-two-root
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #minor-seventh-four-first
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #minor-seventh-two-first
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #minor-seventh-four-second
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #minor-seventh-two-second
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #minor-seventh-four-third
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #minor-seventh-two-third
          }
        }
      }
      \hspace #2
      \center-column {
        \fontsize #5 \bold "7"
        \override #`(baseline-skip . ,row-pitch)
        \column {
          \override #'(baseline-skip . 3)
          \override #'(padding . 2)
          \override #'(font-size . 4)
          \table #'(-1 -1) {
            \fret-diagram-with-fingers "4" ##t #1 #diagram-size #dominant-seventh-four-root
            \fret-diagram-with-fingers "2" ##t #1 #diagram-size #dominant-seventh-two-root
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #dominant-seventh-four-first
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #dominant-seventh-two-first
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #dominant-seventh-four-second
            \fret-diagram-with-fingers " " ##t #2 #diagram-size #dominant-seventh-two-second
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #dominant-seventh-four-third
            \fret-diagram-with-fingers " " ##t #1 #diagram-size #dominant-seventh-two-third
          }
        }
      }
    }
  }
}
