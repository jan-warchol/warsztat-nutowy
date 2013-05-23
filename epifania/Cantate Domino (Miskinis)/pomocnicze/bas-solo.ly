\version "2.16.1"

\include "./dzielenie-głosów.ily"
\include "./specjalna-dynamika.ily"
\include "../bas.ily"

\new Staff {
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
  \dynamicUp
  \tupletUp
  \clef F

  \bas
}
\addlyrics \bastekst
