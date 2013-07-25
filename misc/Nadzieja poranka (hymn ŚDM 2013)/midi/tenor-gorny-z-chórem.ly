\version "2.16.1"
#(ly:set-option 'relative-includes #t)

\include "naglowek.ily"

\score {
  <<
    \new Staff { \pianino \sopran }
    \new Staff { \pianino \alt }
    \new Staff { \pianino \tenordolny }
    \new Staff { \klarnet \tenorgorny }
    \new Staff { \pianino \bas }
  >>
  \midi {}
}
