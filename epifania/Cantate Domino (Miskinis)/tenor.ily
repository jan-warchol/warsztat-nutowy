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

  \key g \major
  \time 4/4
  \tempo "Con moto e ritmico" 4 = 112
  \partial 4
  
  % UWAGA!
  % na razie przepisujcie tylko dolne głosy
  % (tzn. wpiszcie to, co śpiewają soprany drugie,
  % alty 2gie, tenory 2 i basy 2). Górne głosy będą później.
  
  % w komentarzach to, czego nie potrafię
  % w danym takcie zrealizować
  r4
  b4.\mp b b4
  b8 c c2.
  d4. d d4
  d8 b b2.
  c4\mf c4. c 
  b4 b4. b
  bes4 bes4. bes
  a a8~ a2
  b4.^\markup{\italic{più} \dynamic f} b b4
  b8->( c) c c->~ c2
  d4. d d4
  d8->( b) b b->~ b2
  c4 c4. c
  
  %takt 14
  b4 b4. b
  a4 a4. a
  gis gis8~ gis2\< \breathe \bar "||"
  \time 3/4
  R2.*2\!
  b4\p b b
  c4. c8 c4~
  c2.~
  c\>
  b4\mf b\cresc e\!
  fis fis2~
  fis4 e b
  a8 a a a a4
  b2 gis4
  fis8 fis fis fis fis 4
  gis2 gis4~
  gis 2.\>
  b4\mp b b
  c4. c8 c4~
  c2.~
  c\>
  
  %takt 35
  b4\mf b e
  fis fis2~
  fis2.~
  fis\<
  e2\f b4
  a8 a a a a4~
  a b gis
  fis8\> fis fis fis fis4
  f4\p f2~
  f2.\fermata\> \bar "||"
  \key as \major
  \time 4/4
  R1\!
  c'4.\mp c c4
  c8 des des2.
  es4. es es4
  es8 c c2.
  des4 des4. des
  c4 c4. c
  c4 c4. c
  bes4. bes8~ bes2
  c4.\f c c4
  c8->( des) des des->~ des2
  es4. es es4
  
  %takt 57
  es8->( c) c c->~ c2
  des4 des4. des
  c4 c4. c
  bes4 bes4. bes
  a a8~ a2 \bar "||"
  \key bes \major
  d4.->\f d-> d4->
  d8-> es es2.
  f4.-> f-> f4->
  \override BreathingSign #'text = \markup { \musicglyph #"scripts.rvarcomma" }
  f8-> d d2.\breathe \bar "||"
  \time 3/4
  es8^\markup { \italic{meno} \dynamic f } es4 es8 es4
  d8\mf d4 d8 d4
  des8 des4. des4
  c4.\p c\fermata \bar "||"
  \time 4/4
  R1
  d4.->\mp d-- d4--
  f4.->\mf f-- f4--\f
  f8-> d d2.\fermata\<\breathe \bar "||"
  c4.->\ff c-> c4->
  \time 3/4
  f4.-> f->~
  << f2.{s4\< s s\!} >> \bar "|."
  
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
  Can -- ta -- te,
  can -- ta -- te Do -- mi --no
  can -- ti -- cum no -- vum. __
}