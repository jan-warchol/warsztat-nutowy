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
  d2\mp d
  \times 2/3 { g8( f e) } \times 2/3 { f4 g8 } \times 2/3 { e4 (cis8) } d4
  r2 \times 2/3 { c8 d e } f4
  f4 \times 2/3 {e8 f g} \times 2/3 {cis,4 (a8)} d4
  d4~ \times 2/3 {d4 e8} \times 2/3 {e4 d8} \tempo "accel." e4\cresc
  \time 3/4
  d4(\! \times 2/3 {f4) e8} f4
  e4 \times 2/3 {g8( f) g} \times 2/3 {a4 f8}
  \times 2/3 {a8( g) a} bes4 g\fermata
  \bar "||"
  \time 4/4
  a4\mp \times 2/3 {g4 f8} \times 2/3 {f4( g8)} e4
  \times 2/3 {e8( f g)} \times 2/3 {f4 e8} \times 2/3 {e4( f8)} d4
  \times 2/3 {f8 e d} g4( c,) f
  \times 2/3 {d8 c bes} e4( a,) d
  d4~ \times 2/3 {d4 e8} \times 2/3 {e4 d8} \tempo "accel." e4 \cresc
  \time 3/4
  d4(\! \times 2/3 {f4 ) e8} f4
  e4 \times 2/3 {g8 ( f ) g} \times 2/3 {a4 f8}
  \times 2/3 {a8 ( g ) a} bes4 g\fermata
  \bar "||"
  \key d \major
  \tempo "Tempo I"
  d4\p d2~
  d4 <<
    {
      \voiceOne
      d4 d \fermata
      % górny bas
    }
    \new Voice {
      \voiceTwo
      \parenthesize a4 \parenthesize a \fermata
      % dolny bas
    }
  >>
  \oneVoice
  d4 d2~
  d4 <<
    {
      \voiceOne
      d4 d \fermata
      % górny bas
    }
    \new Voice {
      \voiceTwo
      \parenthesize a4 \parenthesize a \fermata
      % dolny bas
    }
  >>
  \oneVoice
  d4\f d4. d8
  d4 d2~
  d2.
  \time 2/4
  f4. b8
  b4 b~
  b2
  b4 b~
  b2
  \compressFullBarRests
  R2
  d,2
  d2 \fermata

  \bar "|."
}
\addlyrics {
  A -- ve,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum,
  Do -- mi -- nus te -- cum,
  be -- ne -- di -- cta tu,
  be -- ne -- di -- cta
  fru -- ctus ven -- tris tu -- i, Je -- sus
  A -- ve Ma -- ri -- a,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum,
  Do -- mi -- nus te -- cum,
  be -- ne -- di -- cta tu,
  be -- ne -- di -- cta
  fru -- ctus ven -- tris tu -- i, Je -- sus.
  San -- cta, San -- cta Ma -- ter De -- i,
  o -- ra pro -- no -- bis __
  nunc in ho -- ra __ mor -- tis __
  A -- men.
}