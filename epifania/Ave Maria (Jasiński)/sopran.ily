\version "2.16.1"

\paper { ragged-right = ##f }

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
  \times 2/3 { e8\melisma f( g)\melismaEnd } \times 2/3 { f4 e8 } \times 2/3 { e4( f8) } d4
  \times 2/3 { f8 e d  } bes'4~( \times 2/3 { bes4 c8) } a4~
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum
}

\new Staff \with { \consists "Ambitus_engraver" } \relative f' {
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
  \dynamicUp
  \tupletUp
  \clef treble
  \key d \minor
  \time 12/8
  \tempo Moderato
  a4.\mp g4 f8 f4( g8) e4.
  e8\melisma f( g)\melismaEnd f4 e8 e4( f8) d4.
  f8 e d bes'4.~( bes4 c8) a4.~
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum
}