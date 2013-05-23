\version "2.16.1"

\include "./dzielenie-głosów.ily"
\include "./specjalna-dynamika.ily"
\include "../alt.ily"

\new Staff {
  \set Staff.instrumentName = "A "
  \set Staff.shortInstrumentName = "A "
  \dynamicUp
  \tupletUp
  \clef G

  \alt
}
\addlyrics \alttekst
