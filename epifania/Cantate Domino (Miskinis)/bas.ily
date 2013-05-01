\version "2.16.1"

% -*- master: ./pomocnicze/bas-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "basgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

basdolny = \relative f {
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
  g,4.\piuf g g4 % piu
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
  e4\mf e gis
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
  \override BreathingSign #'text = \markup { \musicglyph #"scripts.rvarcomma" }
  g8-> g g2. \breathe
  \time 3/4
  as8 as4 as8 as4
  g8 g4 g8 g4
  ges8 ges4. ges4
  f4.\p f4.\fermata
  \time 4/4
  f->\p f-- f4-- % sub, cresc
  f4.->\mp f-- f4--
  bes4.->\mf bes-- bes4--\f
  bes8-> g g2.\fermata \breathe % crescendo, oddech?
  c4.->\ff c-> c4->
  \time 3/4
  c4.-> c->
  << {f,-> f->} {s4\< s s\!} >>  % crescendo
}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

basgorny = \relative f {
  %strona 1
  \set Timing.beamExceptions = #'()
  \rownyRytm {
    r4
    d4. \mp  d d4
    d8 e e2.
    fis4. fis fis4
    a8 g g2. |
    a4 \mf a4. a
    gis4 gis4. gis |
    g!4 g4. g
    fis4. fis8~ fis2 |
    d4.\f d d4 | % piu
    d8->( e) e e~-> e2 |
    fis4. fis fis4 |
  }
  \podzial {
    a8->( g) g g~-> g2
  }
  \rownyRytm {
    g4 g4. g

    % strona 2 14
    g4 g4. g
    f4 f4. f
    e4. e8~ e2\<  \breathe
    \time 3/4
    |
    R2.*2 \!
    gis4 \p gis gis
    fis4. fis8 fis4~
    fis2.~
    fis2. \>
    gis4 \mf gis \cresc b\!
    c c2~
    c4 b gis
    fis8 fis8 fis8 fis8 fis4
    gis2 e4
    d8 d8 d8 d8 d4
    e2 e4~
    e2.\>
    gis4 \mp gis gis
    fis4. fis8 fis4~
    fis2.~
    fis2. \>

    %strona 3 takt 35
    gis4 \mf gis b
    c c2~
    c2.~
    c2. \<
    b2\f gis4
    fis8 fis8 fis8 fis8 fis4~
    fis4 gis e
    d8\> d8 d8 d8 d4
    des\p des2~
    des2. \>
    \key as \major
    \time 4/4
    \set Timing.beamExceptions = #'()
    R1\!
    es4. \mp es es4 |
    es8 f f2.
    g4. g g4
    bes8 as as2.
    bes 4 bes4. bes |
    a4 a4. a |
    as!4 as4. as |
    g g8~ g2 |
    es4. \piuf es es4^\markup \italic più |
    es8->( f) f f~-> f2 |
    g4. g g4

    % strona 4 takt 57
  }
  \podzial {
    bes8->( as) as as~-> as2
  }
  \rownyRytm {
    as4 as4. as
    as4 as4. as
    ges4 ges4. ges
    f f8~ f2
    \key bes \major
    f4.->\f f-> f4->
    f8-> g g2.
    a4.-> a-> a4->
    c8-> bes bes2. % oddech?
    \time 3/4
    c8 c4 c8 c4
    bes8 bes4 bes8 bes4
    bes8 bes4. bes4
    a4.\p a4.\fermata
  }
  \unisono {
    \time 4/4
    f4.->\subp f-- f4-- % cresc
  }
  \rownyRytm {
    bes4.->\mp bes-- bes4--
    d4.->\mf d4.-- d4--\f
    d8-> bes bes2.\fermata \<  % oddech?
  }
  \unisono {
    c4.->\ff \! c-> c4-> |
  }
  \podzial {
    \time 3/4
    d4.-> c4.~->
    c2
  }
}


bastekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione do partii
  % dolnego głosu (jeśli jest podział).

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
  can -- ta -- te Do -- mi -- no
  can -- ti -- cum no -- vum, no -- vum.
}

piecioliniabasu = {
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
  \dynamicUp
  \tupletUp
  \clef F

  \key g \major
  \time 4/4
  \tempo "Con moto e ritmico" 4 = 112
  \partial 4
  <<
    \basdolny
    \basgorny
  >>
}
\addlyrics \bastekst