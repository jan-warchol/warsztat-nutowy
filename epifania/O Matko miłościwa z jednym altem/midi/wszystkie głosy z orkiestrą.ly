﻿\version "2.13.45"
#(ly:set-option 'relative-includes #t)
% \include "italiano.ly"

\include "../filename.ily"
\bookOutputSuffix "akomp"
sharedProperties = { \include "../global.ily" }
individualBreaks = { }

\include "midi.ily"
	
\score {
    \unfoldRepeats \new ChoirStaff <<
        \sopranoClarinet
        \altoEngHn
        \tenorEngHn
        \bassClarinet
        \violinIStrE
        \violinIIStrE
        \violaStrE
        \continuoStrE
      >>
    \midi { }
  }

