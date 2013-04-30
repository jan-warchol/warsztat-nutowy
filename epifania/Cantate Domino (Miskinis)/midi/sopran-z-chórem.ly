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
    { \klarnet \piecioliniasopranu }
    { \pianino \piecioliniaaltu }
    { \pianino \piecioliniatenoru }
    { \pianino \piecioliniabasu }
  >>
  \midi {}
}
