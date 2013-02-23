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
  a4 r4 r2
  \times 2/3 { f8 (e8) f8 } \times 2/3 { g4 e8 } e4 \times 2/3 { g8 f8 g8 }
  \time 3/4
  \times 2/3 {a4 f8 } f4 \times 2/3 {a8 g8 a8}
  \times 2/3 {bes4 g8}  \times 2/3 {bes8 (a8) bes8}  \times 2/3 {c4 a8}
  \times 2/3 {c8 (bes8) c8} d4 e4\fermata
  % w tuis też nie ma łuczka
  \time 4/4
  a,2\mp bes2
  bes2 a2
  R1
  R1
  \times 2/3 {f8 (e8) f8}  \times 2/3 {g4 e8} e4 \tempo "accel." \times 2/3 {g8\cresc f8\! g8}
  \time 3/4
  \times 2/3 {a4 f8} f4 \times 2/3 {a8 g8 a8}
  \times 2/3 {bes4 g8} \times 2/3 {bes8 (a8) bes8} \times 2/3 {c4 a8}
  \times 2/3 {c8 (bes8) c8} d4 e4\fermata
  \bar "||"
  \key d \major
  fis,4\p a4. g8
  fis4 fis2 \fermata
  fis4 (a4.) g8
  fis4 fis2 \fermata
  d'4\f e4. d8
  f4 f2 ~ f2.
  \time 2/4
  r4
  <<
    {
      \voiceOne
      d4
      % górny sopran
    }
    \new Voice {
      \voiceTwo
      gis,4
      % dolny sopran
    }
  >>
  \oneVoice
  R2
  <<
    {
      \voiceOne
      % górny sopran
      e'4 f4
      ( fis2)
      e4  f4
    }
    \new Voice {
      \voiceTwo
      % dolny sopran
      gis,4 gis4 ~
      gis2
      gis4  gis4
    }
  >>
  \oneVoice
  R2
  <<
    {
      \voiceOne
      % górny sopran
      fis'2
      fis2 \fermata
    }
    \new Voice {
      \voiceTwo
      % dolny sopran
      a,2
      a2
    }
  >>
  \oneVoice
  \bar "|."
}
\addlyrics {
  A -- ve Ma -- ri -- a,
  gra -- ti -- a ple -- na,
  Do -- mi -- nus te -- cum
  be -- ne -- di -- cta tu
  in mu -- li -- e -- ri -- bus
  et be -- ne -- di -- ctus fru -- ctus ven -- tris
  tu -- i Je -- sus
  A -- ve
  A -- ve
  be -- ne -- di -- cta tu in mu -- li -- e -- ri -- bus
  et be -- ne -- di -- ctus fru -- ctus ven -- tris
  tu -- i Je -- sus
  San -- cta Ma -- ri -- a
  Ma -- ter De -- i
  o -- ra pro no -- bis
  et ho -- ra
  no -- stræ
  A -- men
}
