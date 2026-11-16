\version "2.26.0"
\include "../../library/fret-diagrams.ly"
\include "../../library/footer.ly"

diagram-size = #4.0

\include "../../scales/a-shaped-scale-e#.ly"

% the key of the sheet: its name, the root on the sixth string, and its
% scale diagrams
scale-name = "E#"
scale-root = eis
scale-diagrams = \a-shaped-scale-e-sharp

\include "../../library/scales-sheet.ly"
