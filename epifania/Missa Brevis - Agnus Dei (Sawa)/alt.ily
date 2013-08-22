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
  \time 3/4
  % wpisz nuty:
  
  a2 g4
  f e r8 e
  a4 a8 a g g
  f4 e r
  e8 e f4 f
  f e r
  a2 g4
  f e r8e
  a4 a8 a g g
  f4 e r
  e8 e f4 f
  f e r
  d\melisma e\melismaEnd f
  f e r8 e d4 e8 e f f
  g\melisma f\melismaEnd e4 r
  e f2
  e4 f2
  e4\melisma f2\melismaEnd
  e2. \bar "|."
  
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

alt = <<
  \altdolny
  \altgorny
>>

%\new Staff{
%  \alt
%  \addlyrics \alttekst 
%}