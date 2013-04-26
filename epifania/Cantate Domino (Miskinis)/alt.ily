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
  
  \key g \major
  \time 4/4
  \tempo "Con moto e ritmico" 4 = 112
  \partial 4
  
  % UWAGA!
  % na razie przepisujcie tylko dolne głosy
  % (tzn. wpiszcie to, co śpiewają soprany drugie,
  % alty 2gie, tenory 2 i basy 2). Górne głosy będą później.
  
  % w komentarzach to, czego w danym takcie
  % nie potrafię zrealizować
  
  d4\mp 
  a'4. g8~ g2
  e4 g8 g4. d4
  a'4. g8~g2
  fis 4 g8 g4. d4\mf
  d4. d e4
  d4. d8~d2
  d4. d c4
  d a'2 d,4\f % piu
  a'4. g8~ g2
  e4 g8 g4. d4 a'4. g8~ g2
  fis4 g8 g4. g4
  d4. d e4
  
  %takt 14
  d4. d8~ d2
  d4. d c4
  d e2.\fermata % crescendo, oddech
  \time 3/4
  b4\p b b c4. c8 c4~
  c2.~
  c % decrescendo
  b4\mp b e
  e e2~
  e2.~
  e % crescendo
  e2 dis4
  cis8 cis cis cis cis4~
  cis cis b
  cis8 cis cis cis cis4
  b b2~
  b2. % decrescendo
  R2.*2
  b4\mp b b
  c4. c8 c4~
  
  %takt 35
  c2.~
  c % decrescendo
  b4\mf b e
  e e2~ % crescendo
  e4\f e dis
  cis8 cis cis cis cis4
  cis2 b4
  cis8 cis cis cis cis4 % decrescendo
  des2\p des4~
  des2.\fermata % decrescendo
  \key as \major
  \time 4/4
  r2 r4 es\mp
  bes'4. as8~ as2
  f4 as8 as4. es4
  bes'4. as8~ as2 % cresc
  g4 as8 as4. es4
  es4. es f4
  es4. es8~ es2
  es4. es des4
  es bes'2 es,4\f % piu
  bes'4. as8~as2
  f4 as8 as4. es4
  bes'4. as8~ as2
  
  %takt 57
  g4 as8 as4. as4
  es4. es f4
  es4. es8~ es2
  es4. es des4
  es4 f2 f4\f % oddech
  \key bes \major
  c'4. bes8~ bes2~
  bes4 f f f c'4. bes8~ bes2~
  bes1\fermata
  \time 3/4
  r4 f f8 f~
  f4 f f8 f~ % dim
  f4 f es
  f\p g2\fermata
  \time 4/4
  f4.->\p f-- f4-- % sub, cresc
  f4.->\mp f-- f4--
  g4.->\mf g-- g4--
  g8->\f f f2.\fermata % crescendo, oddech?
  c'4.-> c-> c4->
  \time 3/4
  g4.-> a->~
  a2. % crescendo
  
}
\addlyrics {
  Can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te, can -- ta -- te __ can -- ti -- cum no -- vum.
  Can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te, can -- ta -- te __
  
  %takt 15
  can -- ti -- cum no -- vum:
  et be -- ne -- di -- ci -- te __
  no -- mi -- ni e -- ius, __
  qui -- a mi -- ra -- bi -- li -- a, __
  qui -- a mi -- ra -- bi -- li -- a fe -- cit, __
  et be -- ne -- di -- ci -- te __
  
  %takt 37
  no -- mi -- ni e -- ius, __
  qui -- a mi -- ra -- bi -- li -- a,
  qui -- a mi -- ra -- bi -- li -- a fe -- cit. __
  Can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te, can -- ta -- te __
  can -- ti -- cum no -- vum,
  can -- ta -- te __ Do -- mi -- no,
  can -- ta -- te __
  
  %takt 57
  Do -- mi -- no,
  can -- ta -- te, can -- ta -- te __
  can -- ti -- cum no -- vum.
  Can -- ta -- te __
  et ex -- sul -- ta -- te, __
  psa -- li -- te __ ci -- tha -- ra __ 
  vo -- ce psal -- mi.
  Can -- ta -- te, can -- ta -- te,
  can -- ta -- te Do -- mi -- no
  can -- ti -- cum no -- vum. __
}