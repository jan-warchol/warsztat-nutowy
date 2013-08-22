\version "2.16.1"

% -*- master: ./pomocnicze/sopran-solo.ly;

% Uwaga! z przyczyn technicznych zawsze przed
% skompilowaniem partii trzeba zapisywać plik.

% Wpisz tutaj całą dolną partię - łącznie z tym, co
% jest śpiewane unisono, i wszystkimi oznaczeniami.
% (Jeśli nie ma podziału, po prostu wpisz tu całą partię.)

soprandolny = \relative f' {
  % podaj tonację, na przykład \key g \minor
  \key a \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  e4\f\melisma c'8 a\melismaEnd b2
  g4\melisma e'8 c\melismaEnd d2
  c4 b a8 a g4
  f8\melisma g a\melismaEnd b c4 d
  e2 r8 e,8 e e
  cis' b4. r8 e, e e
  b' a4. r8 e e e
  fis2\melisma gis4 a\melismaEnd
  b2 r4 e,\f
  e'4.\melisma cis8\melismaEnd a4 e
  e'4.\melisma cis8\melismaEnd a4 e
  e' d cis b
  a2 cis~
  cis b4 e,
  d'2\melisma b\melismaEnd
  cis1 \bar "||"
  \break
  
  %takt 17
  cis,2\p\melisma cis'4\melismaEnd gis
  b2 a
  gis4 cis, gis'2
  fis gis4\melisma cis,\melismaEnd
  cis'2 b
  a gis4 cis,
  fis2 gis4 a
  b2 r4 e,4\f
  e'4.\melisma cis8\melismaEnd a4 e
  e'4.\melisma cis8\melismaEnd a4 e
  e' d cis b
  a2 cis~
  cis b4 e,
  d'2\melisma b\melismaEnd
  cis1 \bar "|."

}


% Jeśli w którymś miejscu głos się dzieli, tutaj wpisz
% CAŁĄ górną partię (łącznie z fragmentami, które są
% unisono z dolną partią, i wszystkimi oznaczeniami).

% Żeby odpowiednio połączyć obie partie, wstaw fragmenty
% śpiewane razem wewnątrz \unisono { } , a fragmenty
% o różnym rytmie wewnątrz \podzial { } . Tam, gdzie oba
% głosy śpiewają różne dźwięku w równym rytmie, nie trzeba
% używać żadnej specjalnej funkcji.

soprangorny = \relative f' {
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  
}


soprantekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus, De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li, cae -- li et ter -- ra
  glo -- ri -- a tu -- a.
  Ho -- san -- na,
  ho -- san -- na,
  ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis.
  %takt17
  Be -- ne -- dic -- tus,
  Be -- ne -- dic -- tus qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na,
  ho -- san -- na,
  ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis.
  
}


sopran = <<
  \soprandolny
  \soprangorny
>>

%\new Staff{
%  \sopran
%}
%\addlyrics \soprantekst