\version "2.16.1"
#(ly:set-option 'relative-includes #t)

\include "naglowek.ily"

\score {
  <<
    \new Staff { \klarnet \sopran }
    \new Staff { \klarnet \alt }
    \new Staff { \klarnet \tenor }
    \new Staff { \klarnet \bas }
  >>
  \midi {}
}
