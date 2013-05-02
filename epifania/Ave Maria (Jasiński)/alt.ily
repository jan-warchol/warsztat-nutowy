\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f' {
  \set Staff.instrumentName = "A "
  \set Staff.shortInstrumentName = "A "
  \dynamicUp
  \tupletUp
  \clef treble
  \key d \minor
  \time 4/4
  \tempo Moderato
  
  
  \bar "|."
}
\addlyrics {
  
}