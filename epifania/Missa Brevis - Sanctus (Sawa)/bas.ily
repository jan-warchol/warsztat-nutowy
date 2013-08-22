\version "2.16.1"

% -*- master: ./pomocnicze/bas-solo.ly;

% Uwaga! z przyczyn technicznych zawsze przed
% skompilowaniem partii trzeba zapisywać plik.

% Wpisz tutaj całą dolną partię - łącznie z tym, co
% jest śpiewane unisono, i wszystkimi oznaczeniami.
% (Jeśli nie ma podziału, po prostu wpisz tu całą partię.)

basdolny = \relative f {
  \clef bass
  % podaj tonację, na przykład \key g \minor
  \key a \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  e2 e g g e4 e e8 e e4
  e4. e8 e4 e4
  e2 r8 e8 e e
  e8 e4. r8  e8 e e 
  e e4. r8 e e e
  e4\melisma d cis b\melismaEnd e2 r4 e4 e2
  e4 e4 e2 e4 e e4 e e e
  d4.\melisma cis8\melismaEnd b2~ b e8\melisma fis\melismaEnd gis\melisma a\melismaEnd
  b2\melisma e,2\melismaEnd a1
  cis,2. cis4 cis2 cis
  cis4 cis cis2
  cis cis
  cis cis cis cis4 cis
  d2 cis4 b
  e2 r4 e
  e2 e4 e e2 e4 e 
  e4 e e e
  d4.\melisma cis8\melismaEnd b2~ b
  e8\melisma fis\melismaEnd gis\melisma a\melismaEnd
  b2\melisma e,2\melismaEnd
  a1
  
}


% Jeśli w którymś miejscu głos się dzieli, tutaj wpisz
% CAŁĄ górną partię (łącznie z fragmentami, które są
% unisono z dolną partią, i wszystkimi oznaczeniami).

% Żeby odpowiednio połączyć obie partie, wstaw fragmenty
% śpiewane razem wewnątrz \unisono { } , a fragmenty
% o różnym rytmie wewnątrz \podzial { } . Tam, gdzie oba
% głosy śpiewają różne dźwięku w równym rytmie, nie trzeba
% używać żadnej specjalnej funkcji.

basgorny = \relative f {
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  
}


bastekst = \lyricmode {
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

bas = <<
  \basdolny
  \basgorny
>>

%\new Staff{
%  \bas
%}
%\addlyrics \bastekst