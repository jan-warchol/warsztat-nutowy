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
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  \key d \minor
  \time 4/4
  \tempo Moderato
  c'2 bes
  bes2 g4( f)
  r4 \times 2/3 { g8 a bes } c4 c
  
  \bar "|."
}
\addlyrics {
  A -- ve,
  A -- ve,
  Do -- mi -- nus te -- cum,
}