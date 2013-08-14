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
  \time 3/4
  % wpisz nuty:
  e8\mf f e4. e8
  e e a2
  e8 f e4. e8
  e e b'2
  e,8 e d'4 c
  c8 d b2
  g4\f f' e
  d8 g, g2
  e4 d' c
  b8 e, e2
  d8\melisma e\melismaEnd f\melisma g\melismaEnd a\melisma b\melismaEnd
  c d b2
  e,8\mf f e4. e8
  e e a2
  e8 f e4. e8
  e e b'2
  e,8 e d'4 c
  b8 c a2 \bar "|."
  
  %Sanctus
  \break
  \key a \minor
  \time 4/4
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
  
  %Agnus
  \break
  \key a \minor
  \time 3/4
  a2\mp b4
  c b r8 b
  a4 a8 a b b
  
  c4 b r
  b8 b c4 a
  c b r
  a2 b4
  c b r8 b
  a4 a8 a b b c4 b r
  b8 b c4 a
  c b r
  a\mf\melisma b\melismaEnd c
  c b r8 b
  a4 b8 b c c
  d\melisma c\melismaEnd b4 r
  e d2
  e4 d2
  c4\melisma b2\melismaEnd
  a2. \bar "|."
  
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
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son.
  
  %Sanctus
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
  
  %Agnus
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis.
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis.
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  do -- na no -- bis pa -- cem.
  
}


sopran = <<
  \soprandolny
  \soprangorny
>>

%\new Staff{
%  \sopran
%}
%\addlyrics {
%  \soprantekst
%}