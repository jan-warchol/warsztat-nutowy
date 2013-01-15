\version "2.13.45"
#(ly:set-option 'relative-includes #t)
% \include "italiano.ly"

\include "../filename.ily"

sharedProperties = { \include "../global.ily" }
individualBreaks = { }

\include "midi.ily"
	
\score {
    \removeWithTag #'aCappella
    \unfoldRepeats \new ChoirStaff <<
        \sopranoIClarinet
        \sopranoIIEngHn
        \altoClarinet
      >>
    \midi { }
  }

