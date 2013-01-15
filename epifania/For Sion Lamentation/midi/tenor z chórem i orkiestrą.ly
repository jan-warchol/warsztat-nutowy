\version "2.13.45"
#(ly:set-option 'relative-includes #t)
% \include "italiano.ly"

\include "../filename.ily"
\bookOutputSuffix "t-chor-akomp"
sharedProperties = { \include "../global.ily" }
individualBreaks = { }

\include "midi.ily"

\score {
    \unfoldRepeats \new ChoirStaff <<
        \sopranoPno
        \altoPno
        \tenorClarinet
        \bassPno
        \violinIQuiet
        \violinIIQuiet
        \violaQuiet
        \continuoQuiet
      >>
    \midi { }
  }

