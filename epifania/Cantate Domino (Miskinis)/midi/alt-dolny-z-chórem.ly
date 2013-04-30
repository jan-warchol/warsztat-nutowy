\version "2.16.1"

\include "../pomocnicze/specjalna-dynamika.ily"
\include "../pomocnicze/dzielenie-głosów.ily"
\include "../pomocnicze/ustawienia-midi.ily"
\include "../sopran.ily"
\include "../alt.ily"
\include "../tenor.ily"
\include "../bas.ily"

\score {
  <<
    { \pianino \piecioliniasopranu }
    \new Staff { \klarnet \altdolny }
    \new Staff { \pianino \altgorny }
    { \pianino \piecioliniatenoru }
    { \pianino \piecioliniabasu }
  >>
  \midi {}
}
