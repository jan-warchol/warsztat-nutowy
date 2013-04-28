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
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
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
  r4 R1*3  
  r2 r4 d4
  d'4. d4. e4 d4. d8~\melisma d2 \melismaEnd
  d4. d4. c4
  d4 a2.
  r2 r4 d,4
  a'4. g8~ g2~ g2. d4
  a'4. g8~ g4 g4
  d'4. d4. e4
  d4. d8~ d2
  d4. d4. c4
  d4 e2.
  \time 3/4
  % nie pamiętam jak się robiło podwójną kreskę taktową
  gis,4 gis4 gis4
  fis4. fis8 fis4~ 
  fis2.~
  fis2.
  gis4 gis4 b4
  c4 c2~
  c2.~
  c2.
  b2 gis4
  gis8 gis8 gis8 gis8 fis4~
  fis4 fis 4 gis4
 a8 a8 a8 a8 a4
 gis4 gis2~ gis2.
 R R
 gis4 gis4 gis4
 fis4. fis8 fis4~
 fis2.~ fis2.
 gis4 gis4 b4
 c4 c2~ 
 c4 b4 gis4
 gis8 gis8 gis8 gis8 fis4
 fis2 gis4
 a8 a8 a8 a8 a4
 as2 as4~
 as2.
  \key as \major
 \time 4/4
 % kreska taktowa
 R R R R r2 r4 des,4
 es'4. es4. f4
 es4. es8~ es2
 es4. es4. des4
 es4 bes2.
 r2 r4 des,4
 bes'4. as8~ as2~
 as2. des,4
 bes'4. as8~ as4 as4
 es'4. es4. f4
 es4. es8~ es2
 es4. es4. des4
 es4 f2.
   \key bes \major
   r2 r4 f,4
   c'4. bes8~ bes2~ 
   bes4 f4 f4 f4
   c'4. bes8~ bes2
    \key bes \major
    \time 3/4
 r4 f'4 f8 f8~
 f4 f4 f8 f8~
 f4 f4 es4
 f4 c2
 \time 4/4
R1
 g4. g4. g4
 c4. c4. c4
 c8 f8 f2.
 c4. c4. c4
 \time 3/4
  c4. c4. ~
  c2.
}
\addlyrics {
  Can -- ta -- te, can -- ta -- te
  can -- ti -- cum no -- vum.
  Can -- ta -- te, can -- ta -- te, can -- ta -- te, can -- ta -- te can -- ti -- cum no -- vum:
  et be -- ne -- di -- ci -- te
  no -- mi -- ni e -- ius
  qui -- a mi -- ra -- bi -- li -- a,
  qui -- a mi -- ra -- bi -- li -- a
  fe -- cit, 
  et be -- ne -- di -- ci -- te
  no -- mi -- ni e -- ius,
  qui -- a mi -- ra -- bi -- li -- a,
  qui -- a mi -- ra -- bi -- li -- a fe -- cit.
  Can -- ta -- te, can -- ta -- te
  can -- ti -- cum no -- vum,
  can -- ta -- te, 
  can -- ta -- te, can -- ta -- te, can -- ta -- te
  can -- ti -- cum no -- vum.
  Can -- ta -- te et ex -- sul -- ta -- te,
  psa -- li -- te ci -- tha -- ra vo -- ce psal -- mi.
  Can -- ta -- te, can -- ta -- te Do -- mi -- no,
  can -- ti -- cum no -- vum.
  
  
}