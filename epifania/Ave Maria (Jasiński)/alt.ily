\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f' {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \set Staff.instrumentName = "A "
  \set Staff.shortInstrumentName = "A "
  \dynamicUp
  \tupletUp
  \clef treble
  \key d \minor
  \time 4/4
  \tempo Moderato
  f4 \times 2/3 { e4 d8 } \times 2/3 { d4( e8) } cis4
  cis2 a
  \times 2/3 { f'8 e d } d4 e2
  \times 2/3 { bes8 c d } g4~( \times 2/3 { g4 a8) } f4
  
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a,
  a -- ve,
  Do -- mi -- nus te -- cum,
  Do -- mi -- nus te -- cum
}