\version "2.13.45"
#(ly:set-option 'relative-includes #t)
% \include "italiano.ly"

\include "filename.ily"

sharedProperties = { \include "global.ily" }
individualBreaks = { }

tOff = { \override TupletBracket #'bracket-visibility = ##f }
tOn = { \revert TupletBracket #'bracket-visibility }
\include "midi.ily"

\score {
  \removeWithTag #'aCappella
  \unfoldRepeats \new ChoirStaff <<
    \sopranoClarinet
    \altoEngHn
    \tenorEngHn
    \bassClarinet
  >>
  \midi { }
}

