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

\new Staff{
  \sopran
}
\addlyrics \soprantekst