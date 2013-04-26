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

  \key g \major
  \time 4/4
  \tempo "Con moto e ritmico" 4 = 112
  \partial 4
  
  % UWAGA!
  % na razie przepisujcie tylko dolne głosy
  % (tzn. wpiszcie to, co śpiewają soprany drugie,
  % alty 2gie, tenory 2 i basy 2). Górne głosy będą później.
  
  % w komentarzach to, czego nie umiem zrealizować w danym takcie,
  % nie ma także podwójnych kresek taktowych
  r4
  g,4.\mp g g4
  g8 a a2.
  b4. b b4
  e8 e e2.
  f4\mf f4. f
  e4 e4. e
  es4 es4. es
  d4. d8~ d2
  g,4.\f g g4 % piu
  g8->\melisma a\melismaEnd a a~-> a2 % łuczek
  b4. b b4
  e-> e8 e~-> e2
  e4 e4. e

  %takt 14
  d4 d4. d
  c4 c4. c
  b b8~ b2 % crescendo, oddech 
  \time 3/4
  R2.*2
  e4\p e e
  e4. e8 e4~
  e2.~
  e2. % decrescendo
  e4\mf e gis % cresc
  a a2~
a4 gis e
e8 e e e e4
e2 b4
a8 a a a a4
b2 b4~
b2. % decrescendo
e4\mp e e
e4. e8 e4~
e2.~
e2. % decrescendo

%takt 35
e4\mf e g
a a2~
a2.~
a2. % crescendo
gis2\f e4
e8 e e e e4~
e e b
a8 a a a a4 % decrescendo
as\p as2~
as2.\fermata % decrescendo
\key as \major
\time 4/4
R1
as4.\mp as as4
as8 bes bes2.
c4. c c4
f8 f f2.
ges4 ges4. ges
f4 f4. f
fes4 fes4. fes
es4. es8~ es2
as,4.\f as as4 % piu
as8->\melisma bes\melismaEnd bes bes~-> bes2 % łuczek
c4. c c4

%takt 57
f-> f8 f->~f2
f4 f4. f
es4 es4. es
des4 des4. des
c4. c8~ c2
\key bes \major
bes4.->\f bes-> bes4->
bes8-> c c2.
d4.-> d-> d4->
g8-> g g2. %oddech?
\time 3/4
as8 as4 as8 as4
g8 g4 g8 g4
ges8 ges4. ges4
f4.\p f4.\fermata
\time 4/4
f->\p f-- f4-- % sub, cresc
f4.->\mp f-- f4--
bes4.->\mf bes-- bes4--\f
bes8-> g g2.\fermata % crescendo, oddech?
c4.->\ff c-> c4->
\time 3/4
c4.-> c->
f,-> f-> % crescendo

}
\addlyrics {
  Can -- ta -- te Do -- mi -- no,
  can -- ta -- te Do -- mi -- no,
  can -- ta -- te, can -- ta -- te can -- ti -- cum no -- vum.
  Can -- ta -- te Do -- mi -- no, __
  can -- ta -- te
  Do -- mi -- no, __
  can -- ta -- te,
 
 %takt 14
  can -- ta -- te can -- ti -- cum no -- vum:
  et be -- ne  -- di -- ci -- te __
  no -- mi -- ni e -- ius, __
  qui -- a mi -- ra -- bi -- li -- a,
  qui -- a mi -- ra -- bi -- li -- a fe -- cit, __
  et be -- ne  -- di -- ci -- te __
 
 %takt 35
  no -- mi -- ni e -- ius, __
  qui -- a mi -- ra -- bi -- li -- a, __
  qui -- a mi -- ra -- bi -- li -- a fe -- cit. __
  Can -- ta -- te Do -- mi -- no,
  can -- ta -- te Do -- mi -- no,
  can -- ta -- te, can -- ta -- te can -- ti -- cum no -- vum,
  can -- ta -- te Do -- mi -- no, __
  can -- ta -- te
  
  %takt 57
  Do -- mi -- no, __
  can -- ta -- te, can -- ta -- te can -- ti -- cum no -- vum.
  Can -- ta -- te Do -- mi -- no,
  can -- ta -- te Do -- mi -- no
  et psa -- li -- te in ci -- tha -- ra
  et vo -- ce psal -- mi.
  Can -- ta -- te, can -- ta -- te,
  can -- ta -- te Do -- mi --no
  can -- ti -- cum no -- vum, no -- vum.
}