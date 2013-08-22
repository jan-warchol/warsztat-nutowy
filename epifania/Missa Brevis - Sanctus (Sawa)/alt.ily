\version "2.16.1"

% -*- master: ./pomocnicze/alt-solo.ly;

% Uwaga! z przyczyn technicznych zawsze przed
% skompilowaniem partii trzeba zapisywać plik.

% Wpisz tutaj całą dolną partię - łącznie z tym, co
% jest śpiewane unisono, i wszystkimi oznaczeniami.
% (Jeśli nie ma podziału, po prostu wpisz tu całą partię.)

altdolny = \relative f' {
  % podaj tonację, na przykład \key g \minor
  \key a \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  e2 e
  g g
  a4 g f8 f e4
  d8\melisma e f\melismaEnd g a4 ais
  b2 r8 e,8 e e
  fis fis4. r8 e e e
  e e4. r8 e e e
  d2\melisma e4 dis\melismaEnd
  d!2 r4 e
  a4.\melisma e8\melismaEnd cis4 e
  a4.\melisma e8\melismaEnd cis4 e
  a gis fis e
  fis4.\melisma e8\melismaEnd dis2~
  dis d4 e
  fis\melisma gis a gis\melismaEnd
  a1 \bar "||"
  
  %takt 17 
  cis,2. cis4
  d2 cis
  d4 cis d2
  e d4\melisma cis\melismaEnd
  cis2 d
  cis b4 b
  a2 e'4 dis
  d!2 r4 e
  a4.\melisma e8\melismaEnd cis4 e
  a4.\melisma e8\melismaEnd cis4 e
  a gis fis e
  fis4.\melisma e8\melismaEnd dis2~
  dis d4 e
  fis\melisma gis a gis\melismaEnd
  a1 \bar "|."
  
}


% Jeśli w którymś miejscu głos się dzieli, tutaj wpisz
% CAŁĄ górną partię (łącznie z fragmentami, które są
% unisono z dolną partią, i wszystkimi oznaczeniami).

% Żeby odpowiednio połączyć obie partie, wstaw fragmenty
% śpiewane razem wewnątrz \unisono { } , a fragmenty
% o różnym rytmie wewnątrz \podzial { } . Tam, gdzie oba
% głosy śpiewają różne dźwięku w równym rytmie, nie trzeba
% używać żadnej specjalnej funkcji.

altgorny = \relative f' {
  % podaj tonację, na przykład \key g \minor

  % podaj metrum, na przykład \time 4/4

  % wpisz nuty:
  
}


alttekst = \lyricmode {
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

alt = <<
  \altdolny
  \altgorny
>>

%\new Staff{
%  \alt
%  \addlyrics \alttekst 
%}