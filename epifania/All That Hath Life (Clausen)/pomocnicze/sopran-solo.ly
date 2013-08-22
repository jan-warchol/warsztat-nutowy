\version "2.16.1"

\include "./dzielenie-głosów.ily"
\include "./ustawienia-formatowania.ily"
\include "../sopran.ily"

\new Staff {
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
  \dynamicUp
  \tupletUp
  \clef G

  \sopran
}
\addlyrics \soprantekst
