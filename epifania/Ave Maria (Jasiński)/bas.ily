\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f {
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
  \dynamicUp
  \tupletUp
  \clef bass
  \key d \minor
  \time 4/4
  \tempo Moderato
  
  
  \bar "|."
}
\addlyrics {
  
}