\version "2.16.1"

\include "../pomocnicze/dzielenie-głosów.ily"
\include "../pomocnicze/ustawienia-midi.ily"
\include "../sopran.ily"
\include "../alt.ily"
\include "../tenor.ily"
\include "../bas.ily"

\score {
  <<
    { \pianino \sopran }
    { \klarnet \alt }
    { \pianino \tenor }
    { \pianino \bas }
  >>
  \midi {}
}
