\version "2.26.0"
\include "../../library/fret-diagrams.ly"
\include "../../library/footer.ly"

diagram-size = #4.0

\include "../../scales/a-shaped-scale-a#.ly"

% the key of the sheet: its name, the root on the sixth string, and its
% scale diagrams
scale-name = "A#"
scale-root = ais,
scale-diagrams = \a-shaped-scale-a-sharp

\include "../../library/scales-sheet.ly"
