% Prints where the sheet comes from at the foot of every page. Chord files
% set tagline = ##f for their standalone builds, which would also switch off
% a tagline on any chart that \includes them, so the footer itself is used.
%
% The footer is left off when HIDE_SOURCE_FOOTER is set in the environment.
#(define hide-source-footer (getenv "HIDE_SOURCE_FOOTER"))

\paper {
  oddFooterMarkup = #(if hide-source-footer
      empty-markup
      #{ \markup \fill-line {
           \small \with-url "https://learnthefret.com" "Source: learnthefret.com"
         } #})
  evenFooterMarkup = \oddFooterMarkup
}
