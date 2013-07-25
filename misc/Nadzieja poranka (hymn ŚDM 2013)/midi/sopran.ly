\version "2.16.1"
#(ly:set-option 'relative-includes #t)

\include "naglowek-pomocnicze.ily"
\include "../sopran.ily"

\score {
  \new Staff { \klarnet \sopran }
  \midi {}
}
