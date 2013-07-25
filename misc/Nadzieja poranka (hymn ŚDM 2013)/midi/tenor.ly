\version "2.16.1"
#(ly:set-option 'relative-includes #t)

\include "naglowek-pomocnicze.ily"
\include "../tenor.ily"

\score {
  \new Staff { \klarnet \tenor }
  \midi {}
}
