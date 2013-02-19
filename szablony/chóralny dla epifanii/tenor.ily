\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f {
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  \key
  \time
  \tempo
  
  
  \bar "|."
}
\addlyrics {
  
}