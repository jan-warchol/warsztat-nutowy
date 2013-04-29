\version "2.16.1"

% -*- master: ./pomocnicze/alt-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "altgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

altdolny = \relative f' {
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
  d a'2 d,4^\markup{\italic{più} \dynamic f}
  a'4. g8~ g2
  e4 g8 g4. d4 a'4. g8~ g2
  fis4 g8 g4. g4
  d4. d e4

  %takt 14
  d4. d8~ d2
  d4. d c4
  d e2.\fermata\< \breathe \bar "||"
  \time 3/4
  b4\p b b
  c4. c8 c4~
  c2.~
  c\>
  b4\mp b e
  e e2~
  e2.~
  e\<
  e2\! dis4
  cis8 cis cis cis cis4~
  cis cis b
  cis8 cis cis cis cis4
  b b2~
  b2.\>
  R2.*2\!
  b4\mp b b
  c4. c8 c4~

  %takt 35
  c2.~
  c\>
  b4\mf b e
  e e2~\<
  e4\f e dis
  cis8 cis cis cis cis4
  cis2 b4
  cis8\> cis cis cis cis4\!
  des2\p des4~
  des2.\fermata\> \bar "||"
  \key as \major
  \time 4/4
  r2\! r4 es\mp
  bes'4. as8~ as2
  f4 as8 as4. es4
  bes'4. as8~\cresc as2\!
  g4 as8 as4. es4
  es4. es f4
  es4. es8~ es2
  es4. es des4
  es bes'2 es,4^\markup{\italic{più} \dynamic f}
  bes'4. as8~as2
  f4 as8 as4. es4
  bes'4. as8~ as2

  %takt 57
  g4 as8 as4. as4
  es4. es f4
  es4. es8~ es2
  es4. es des4
  es4 f2\breathe f4\f \bar "||"
  \key bes \major
  c'4. bes8~ bes2~
  bes4 f f f c'4. bes8~ bes2~
  bes1\fermata \bar "||"
  \time 3/4
  r4 f f8 f~
  f4 f f8\dim f~\!
  f4 f es
  f\p g2\fermata \bar "||"
  \time 4/4
  f4.->^\markup{\italic{sub} \dynamic p}\cresc f--\! f4--
  f4.->\mp f-- f4--
  g4.->\mf g-- g4--
  \override BreathingSign #'text = \markup { \musicglyph #"scripts.rvarcomma" }
  g8->\f f f2.\fermata\<\breathe \bar "||"
  c'4.->\ff c-> c4->
  \time 3/4
  g4.-> a->~
  << a2.{s4\< s s\!}>> \bar "|."


}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

altgorny = \relative f' {

  \unisono{
    d4\mp
    a'4. g8~ g2
    e4 g8 g4. d4
    a'4. g8~g2
    fis 4 g8 g4. d4\mf
    d4. d e4
    d4. d8~d2
    d4. d c4
    d a'2 d,4^\markup{\italic{più} \dynamic f}
    a'4. g8~ g2
    e4 g8 g4. d4 a'4. g8~ g2
    fis4 g8 g4. g4
    d4. d e4

    %takt 14
    d4. d8~ d2
    d4. d c4
    d e2.\fermata\< \breathe \bar "||"
  }
  \rownyRytm{
    \time 3/4
    e4\p e e
    e4. e8 e4~
    e2.~
    e\>
    e4\mp e gis
    fis fis2~
    fis2.~
    fis\<
    gis2\! e4
    e8 e e e e4~
    e e e
    fis8 fis fis fis fis4
    e e2~
    e2.\>
    R2.*2\!
    e4\mp e e
    e4. e8 e4~

    %takt 35
    e2.~
    e\>
    e4\mf e gis
    fis fis2~\<
    fis4\f gis e
    e8 e e e e4
    e2 e4
    fis8\> fis fis fis fis4\!
    f2\p f4~
    f2.\fermata\> \bar "||"
  }
  \unisono{
    \key as \major
    \time 4/4
    r2\! r4 es\mp
    bes'4. as8~ as2
    f4 as8 as4. es4
    bes'4. as8~\cresc as2\!
    g4 as8 as4. es4
    es4. es f4
    es4. es8~ es2
    es4. es des4
    es bes'2 es,4^\markup{\italic{più} \dynamic f}
    bes'4. as8~as2
    f4 as8 as4. es4
    bes'4. as8~ as2

    %takt 57
    g4 as8 as4. as4
    es4. es f4
    es4. es8~ es2
    es4. es des4
    es4 f2\breathe f4\f \bar "||"
    \key bes \major
    c'4. bes8~ bes2~
    bes4 f f f c'4. bes8~ bes2~
    bes1\fermata \bar "||"
    \time 3/4
    r4 f f8 f~
    f4 f f8\dim f~\!
    f4 f es
    f\p g2\fermata \bar "||"
    \time 4/4
    f4.->^\markup{\italic{sub} \dynamic p}\cresc f--\! f4--
    f4.->\mp f-- f4--
    g4.->\mf g-- g4--
  }
  \rownyRytm{
    \override BreathingSign #'text = \markup { \musicglyph #"scripts.rvarcomma" }
    g8->\f c c2.\fermata\<\breathe \bar "||"
    c4.->\ff c-> c4->
    \time 3/4
    bes4.-> a->~
    << a2.{s4\< s s\!}>> \bar "|."
  }
}


alttekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione do partii
  % dolnego głosu (jeśli jest podział).

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

piecioliniaaltu = \new Staff \with { \consists "Ambitus_engraver" } {
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
  \clef G

  \key g \major
  \time 4/4
  \tempo "Con moto e ritmico" 4 = 112
  \partial 4
  <<
    \altdolny
    \altgorny
  >>
}
\addlyrics \alttekst