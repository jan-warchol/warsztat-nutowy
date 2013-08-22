\version "2.16.1"

% -*- master: ./pomocnicze/tenor-solo.ly;

% Uwaga! z przyczyn technicznych zawsze przed
% skompilowaniem partii trzeba zapisywać plik.

% Wpisz tutaj całą dolną partię - łącznie z tym, co
% jest śpiewane unisono, i wszystkimi oznaczeniami.
% (Jeśli nie ma podziału, po prostu wpisz tu całą partię.)

tenordolny = \relative f {
  \clef "treble_8"
  
  % podaj tonację, na przykład \key g \minor
  \key a \minor
  
  % podaj metrum, na przykład \time 4/4
  \time 3/4
  
  % wpisz nuty:
  a2 b4
  c b r8 b
  a4 a8 a b b 
  c4 b r
  b8 b c4 d
  c b r
  a2 b4
  c b r8 b
  a4 a8 a b b 
  c4 b r
  b8 b c4 d
  c b r
  c\melisma b\melismaEnd a
  a b r8 b
  c4 b8 b a a
  g\melisma a\melismaEnd b4 r
  c bes2
  c4 bes2
  a4\melisma g2\melismaEnd
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

tenorgorny = \relative f {
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  
}


tenortekst = \lyricmode {
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

tenor = <<
  \tenordolny
  \tenorgorny
>>

%\new Staff{
%  \tenor
%}
%\addlyrics \tenortekst
