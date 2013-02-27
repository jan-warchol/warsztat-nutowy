\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f {
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
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
  \dynamicUp
  \tupletUp
  \clef bass
  \key d \minor
  \time 4/4
  \tempo Moderato
  d2 d
  \times 2/3 { g8( f e) } \times 2/3 { f4 g8 } \times 2/3 { e4( cis8) } d4
  r2 \times 2/3 { c8 d e } f4
  
  \bar "|."
}
\addlyrics {
  A -- ve,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum,
}