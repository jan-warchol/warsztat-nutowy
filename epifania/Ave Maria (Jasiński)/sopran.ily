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
  % w oryginale pierwsza miara 2. taktu była zapisana jako
  % \times 2/3 { e8\melisma f( g)\melismaEnd }
  \times 2/3 { e8 ( f g) } \times 2/3 { f4 e8 } \times 2/3 { e4( f8) } d4
  \times 2/3 { f8 e d  } bes'4~( \times 2/3 { bes4 c8) } a4~
  
  % metrum zmienia się z \time 3/4 na \time 4/4 i z powrotem.
  % na czwartej stronie jest zmiana tonacji na \key d \major
  
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum
}
