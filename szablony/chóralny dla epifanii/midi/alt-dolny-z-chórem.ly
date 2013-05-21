\version "2.16.1"

\include "../pomocnicze/dzielenie-głosów.ily"
\include "../pomocnicze/ustawienia-midi.ily"
\include "../sopran.ily"
\include "../alt.ily"
\include "../tenor.ily"
\include "../bas.ily"

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
