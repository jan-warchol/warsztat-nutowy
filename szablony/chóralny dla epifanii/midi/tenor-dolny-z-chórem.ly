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
    \new Staff { \pianino \alt }
    \new Staff { \klarnet \tenordolny }
    \new Staff { \pianino \tenorgorny }
    \new Staff { \pianino \bas }
  >>
  \midi {}
}
