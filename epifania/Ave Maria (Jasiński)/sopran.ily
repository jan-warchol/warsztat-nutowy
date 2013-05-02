\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f' {
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
  \dynamicUp
  \tupletUp
  \clef treble
  \key d \minor
  \time 4/4
  \tempo Moderato
  a4\mp \times 2/3 { g4 f8 } \times 2/3 { f4( g8) } e4
  
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a
}