\version "2.16.1"

\include "../pomocnicze/dzielenie-głosów.ily"
\include "../pomocnicze/ustawienia-midi.ily"
\include "../sopran.ily"
\include "../alt.ily"
\include "../tenor.ily"
\include "../bas.ily"

\score {
  <<
    \new Staff { \pianino \soprandolny }
    \new Staff { \klarnet \soprangorny }
    { \pianino \piecioliniaaltu }
    { \pianino \piecioliniatenoru }
    { \pianino \piecioliniabasu }
  >>
  \midi {}
}
