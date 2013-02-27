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
  % podaj tonację, na przykład \key g \minor
  \key c \major
  % podaj metrum, na przykład \time 4/4
  \time 2/2
  % wpisz nuty:
  \tempo "Nicht schnell"
  r2 c'\p
  c c
  r c4\< c
  f4. f8\! f2
  d2\mf ( c4) c
  b4.( a8 g4) g4\dim
  a2 a2\p
  a a
  r a4\mf a 
  c4. e8 e2
  a,4\f(f' g, e'
  a, d g, c~
  c b2 a4~
  a4 g2) f4
  f4\dim ( e8 d e4) e
  g2 r
  
}
\addlyrics {
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
}