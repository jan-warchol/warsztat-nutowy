\version "2.13.45"
#(ly:set-option 'relative-includes #t) \include "italiano.ly"

sharedProperties = { \include "../global.ily" }
individualBreaks = { }

\include "../voices.ily"
\include "midi.ily"

\score {
		\altoClarinet
    \midi { }
}

