\version "2.16.1"

\include "../pomocnicze/dzielenie-głosów.ily"
\include "../pomocnicze/ustawienia-midi.ily"
\include "../sopran.ily"
\include "../alt.ily"
\include "../tenor.ily"
\include "../bas.ily"

\score {
  <<
    \new Staff { \klarnet \soprandolny }
    \new Staff { \pianino \soprangorny }
    \new Staff { \pianino \alt }
    \new Staff { \pianino \tenor }
    \new Staff { \pianino \bas }
  >>
  \midi {}
}
