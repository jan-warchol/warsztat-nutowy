\version "2.16.1"

% -*- master: ./pomocnicze/sopran-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "soprangorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

soprandolny = \relative f' {
  \set Timing.beamExceptions = #'()
  r4 R1*3
  r2 r4 d4 \mf
  d'4. d4. e4 d4. d8~\melisma d2 \melismaEnd
  d4. d4. c4
  d4 a2.
  r2 r4 d,4\piuf
  a'4. g8~ g2~ g2. d4
  a'4. g8~ g4 g4
  d'4. ^\markup{\italic{cresc. poco a poco} }d4. e4
  d4. d8~ d2
  d4. d4. c4
  d4 e2. \< \breathe
  \break
  \bar "||"
  \tempo "più lento e tranquillo" 4=76
  \time 3/4
  gis,4 \p gis4 gis4
  fis4. fis8 fis4~
  fis2.~
  fis2. \>
  gis4 \mp gis4 \tweak Stem #'length #6 b4
  \tweak Stem #'length #6 c4
  \tweak Stem #'length #6 c2~
  \tweak Stem #'length #6 c2.~
  c2. \<
  b2\! ^\markup{\italic{leggiero} } gis4
  \set Timing.beamExceptions = #'()
  gis8 ^\markup{\italic{dim. poco a poco} } gis8 gis8 gis8 fis4~
  fis4 fis 4 gis4
  a8 a8 a8 a8 a4
  gis4 gis2~ gis2. \>
  R\! R
  gis4 \mp gis4 gis4
  fis4. fis8 fis4~
  fis2.~ fis2. \>
  gis4 \mf gis4 b4
  c4 c2~ \<
  c4 \f b4 gis4
  gis8 ^\markup{\italic{dim. poco a poco} } gis8 gis8 gis8 fis4
  fis2 gis4
  a8 \> a8 a8 a8 a4
  as2 ^\markup{\italic{rit.} } \p as4~
  as2. \fermata \>
  \break
  \key as \major
  \time 4/4
  \once \set Score.tempoHideNote = ##t
  \tempo "Tempo I" 4 = 112
  \set Timing.beamExceptions = #'()
  R1*4\!
  r2 r4 es4 \mf
  es'4. es4. f4
  es4. es8~ es2
  es4. es4. des4
  es4 bes2.
  r2 r4 es,4 \piuf
  bes'4. as8~ as2~
  as2. es4
  bes'4. as8~ as4 as4
  es'4. es4. f4
  es4. es8~ es2
  es4. es4. des4
  es4 f2.
  \key bes \major
  r2 r4 f,4 \f
  c'4. -> bes8~ bes2~
  bes4 f4 f4 f4
  c'4. -> bes8~ bes2
  \time 3/4
  \tempo "meno mosso" 4=92
  r4 f'4 \menof f8 f8~
  f4 f4 \mf f8 ^\markup{\italic{dim.} } f8~
  f4 f4 es4
  f4 \p c2\fermata
  \break
  \time 4/4
  \tempo "Tempo I"
  R1
  g4. ->\mp g4. -- g4 --
  c4.-> \mf c4. -- c4 --
  \override BreathingSign #'text = \markup { \musicglyph #"scripts.rvarcomma" }
  c8 -> \f f8 ^\markup \italic allarg. f2. \fermata \< \breathe
  \tempo "a tempo"
  c4. \ff -> c4. -> c4 ->
  \time 3/4
  c4. -> <c f>4. ~ ->
  << <c f>2.^\markup{\italic{non rit.} } {s4\< s s\!}>>
}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

soprangorny = \relative f' {
}


soprantekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione do partii
  % dolnego głosu (jeśli jest podział).

  Can -- ta -- te, can -- ta -- te __
  can -- ti -- cum no -- vum.
  Can -- ta -- te, __ can -- ta -- te, __ can -- ta -- te,
  can -- ta -- te __ can -- ti -- cum no -- vum:
  et be -- ne -- di -- ci -- te __
  no -- mi -- ni e -- ius __
  qui -- a mi -- ra -- bi -- li -- a, __
  qui -- a mi -- ra -- bi -- li -- a
  fe -- cit, __
  et be -- ne -- di -- ci -- te __
  no -- mi -- ni e -- ius, __
  qui -- a mi -- ra -- bi -- li -- a,
  qui -- a mi -- ra -- bi -- li -- a fe -- cit. __
  Can -- ta -- te, can -- ta -- te __
  can -- ti -- cum no -- vum,
  can -- ta -- te, __
  can -- ta -- te, __ can -- ta -- te, can -- ta -- te
  can -- ti -- cum no -- vum.
  Can -- ta -- te __ et ex -- sul -- ta -- te, __
  psa -- li -- te __ ci -- tha -- ra __ vo -- ce psal -- mi.
  Can -- ta -- te, can -- ta -- te Do -- mi -- no,
  can -- ti -- cum no -- vum. __
}

piecioliniasopranu = {
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
  \dynamicUp
  \tupletUp
  \clef G

  \key g \major
  \time 4/4
  \tempo "Con moto e ritmico" 4 = 112
  \partial 4
  \set Timing.beamExceptions = #'()
  <<
    \soprandolny
    \soprangorny
  >>
}
\addlyrics \soprantekst