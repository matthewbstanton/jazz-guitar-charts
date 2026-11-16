\version "2.26.0"
\include "../../library/fret-diagrams.ly"
\include "../../library/footer.ly"

diagram-size = #4.0

\include "../../scales/a-shaped-scale-f.ly"

% the key of the sheet: its name, the root on the sixth string, and its
% scale diagrams
scale-name = "F"
scale-root = f
scale-diagrams = \a-shaped-scale-f

\include "../../library/scales-sheet.ly"
