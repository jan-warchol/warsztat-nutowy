\version "2.16.1"

\include "./dzielenie-głosów.ily"
\include "../tenor.ily"

\new Staff {
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
  \dynamicUp
  \tupletUp
  \clef "G_8"

  \tenor
}
\addlyrics \tenortekst
