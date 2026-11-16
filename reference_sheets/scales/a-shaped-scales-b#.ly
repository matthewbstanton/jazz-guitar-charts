\version "2.26.0"
\include "../../library/fret-diagrams.ly"
\include "../../library/footer.ly"

diagram-size = #4.0

\include "../../scales/a-shaped-scale-b#.ly"

% the key of the sheet: its name, the root on the sixth string, and its
% scale diagrams
scale-name = "B#"
scale-root = bis,
scale-diagrams = \a-shaped-scale-b-sharp

\include "../../library/scales-sheet.ly"
