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
  f4\mp \times 2/3 { e4 d8 } \times 2/3 { d4( e8) } cis4
  cis2 a
  \times 2/3 { f'8 e d } d4 e2
  \times 2/3 { bes8 c d } g4~( \times 2/3 { g4 a8) } f4
  \times 2/3 {d8( cis) d} \times 2/3 {e4 cis8} cis4 \tempo "accel." \times 2/3 {e8\cresc d e}
  \time 3/4
  \times 2/3 {f4\! d8} d4 \times 2/3 {f8 e f}
  \times 2/3 {g4 e8} e2
  f4 f g\fermata
  \bar "||"
  \time 4/4
  f2\mp g
  g2 e4( f)
  r4 \times 2/3 {bes,8( c d)} e2
  r4 \times 2/3 {g,8( a b}  cis4) d
  \times 2/3 {d8( cis) d} \times 2/3 {e4 cis8} cis4 \tempo "accel." \times 2/3 {e8\cresc d\! e}
  \time 3/4
  \times 2/3 {f4 d8} d4 \times 2/3 {f8 e f}
  \times 2/3 {g4 e8} e2
  f4 f g\fermata
  \bar "||"
  \key d \major
  \tempo "Tempo I"
  d4\p fis4. e8
  d4 d2\fermata
  d4( fis4.) e8
  d4 d2 \fermata
  fis4\f g4. fis8
  f4 f2~
  f2.
  \time 2/4
  r4 f
  R2
  f4 f~
  f2
  f4 f
  R2
  fis2
  fis2 \fermata
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a,
  A -- ve,
  Do -- mi -- nus te -- cum,
  Do -- mi -- nus te -- cum,
  be -- ne -- di -- cta tu
  in mu -- li -- e -- ri -- bus,
  et be -- ne -- di -- ctus
  fru -- ctus Je -- sus.
  A -- ve, A -- ve, A -- ve, A -- ve
  be -- ne -- di -- cta tu
  in mu -- li -- e -- ri -- bus,
  et be -- ne -- di -- ctus
  fru -- ctus Je -- sus.
  San -- cta Ma -- ri -- a
  Ma -- ter De -- i
  o -- ra pro no -- bis __
  et ho -- ra __
  no -- stræ
  A -- men.
}