\version "2.16.1"

\include "../pomocnicze/specjalna-dynamika.ily"
\include "../pomocnicze/dzielenie-głosów-midi.ily"
\include "../pomocnicze/ustawienia-midi.ily"
\include "../sopran.ily"
\include "../alt.ily"
\include "../tenor.ily"
\include "../bas.ily"

\score {
  <<
    \new Staff { \klarnet \sopran }
    \new Staff { \klarnet \alt }
    \new Staff { \klarnet \tenor }
    \new Staff { \klarnet \bas }
  >>
  \midi {}
}
