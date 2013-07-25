\version "2.16.1"
#(ly:set-option 'relative-includes #t)
#(ly:set-option 'relative-includes #t)

\include "naglowek.ily"

\score {
  <<
    \new Staff { \pianino \sopran }
    \new Staff { \klarnet \altdolny }
    \new Staff { \pianino \altgorny }
    \new Staff { \pianino \tenor }
    \new Staff { \pianino \bas }
  >>
  \midi {}
}
