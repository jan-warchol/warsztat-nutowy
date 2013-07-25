\version "2.16.1"
#(ly:set-option 'relative-includes #t)

\include "naglowek.ily"

\score {
  <<
    \new Staff { \pianino \sopran }
    \new Staff { \pianino \alt }
    \new Staff { \pianino \tenor }
    \new Staff { \pianino \basdolny }
    \new Staff { \klarnet \basgorny }
  >>
  \midi {}
}
