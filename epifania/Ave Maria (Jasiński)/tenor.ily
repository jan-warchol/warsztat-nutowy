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
  \tempo \markup \large Moderato
  c'2\mp bes
  bes2 g4( f)
  r4 \times 2/3 { g8 a bes } c4 c
  r4 r4 \times 2/3 { a8^[ ( b cis)] } d4
  \times 2/3 { a8 ( g ) a}
  \times 2/3 { bes4 g8}
  g4 \tempo \markup \large "accel."
  \times 2/3 {a8 \cresc bes a}
  \time 3/4
  \times 2/3 {c4\! a8} a4 \times 2/3 { c8 bes c}
  \times 2/3 {d4 bes8} c2
  d4 d bes \fermata
  \bar "||"
  \time 4/4
  d2\mp d
  d2 cis4(d)
  r4 bes4~-\tweak #'positions #'(1 . 1)(\times 2/3 {bes4 c8)} a4~
  a4 g4~(\times 2/3 {g4 a8)} f4
  \times 2/3 {a8 ( g ) a} \times 2/3 {bes4 g8} g4 \tempo \markup \large "accel." \times 2/3 {a8 \cresc bes \! a}
  \time 3/4
  \times 2/3 {c4 a8} a4 \times 2/3 {c8 bes c}
  \times 2/3 {c4 bes8} c2
  d4 d bes \fermata
  \bar "||"
  \key d \major
  \tempo \markup \large "Tempo I"
  g4\p c4. bes8
  a4 a2 \fermata
  a4 ( c4. ) bes8
  a4 a2 \fermata
  a4 \f  bes4. a8
  b4 b \times 2/3 {gis8 ( ais ) gis}
  \times 2/3 {b4 b8} d2
  \time 2/4
  d4. d8 e4 d~
  d2
  e4 d4 ~
  d2
  R2
  d2
  d2 \fermata

  \bar "|."
}
\addlyrics {
  A -- ve,
  A -- ve,
  Do -- mi -- nus te -- cum,
  te -- cum
  be -- ne di -- cta tu in mu -- li --  e -- ri -- bus
  et be -- ne -- di -- ctus fru -- ctus Je -- sus
  A -- ve,
  A -- ve __
  A -- ve __
  A -- ve,
  be -- ne -- di -- cta tu in mu -- li -- e -- ri -- bus
  et be -- ne -- di -- ctus fru -- ctus Je -- sus.
  San -- cta Ma -- ri -- a, Ma -- ter De -- i,
  o -- ra pro no -- bis pec -- ca -- to -- ri -- bus
  nunc in ho -- ra __ mor -- tis __
  A -- men.
}