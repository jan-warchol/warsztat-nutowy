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
  \time 3/4
  % wpisz nuty:
  e8 f e4. e8
  e e e2
  e8 f e4. e8
  e e e2
  e8 e e4 e
  e8 e e2
  g4 g g
  g8 a b2
  e,4 e e
  e8 fis gis2
  a4 g! f!
  e8 e e2
  e8 f e4. e8
  e e e2
  e8 f e4. e8
  e e e2
  e8 e e4 e
  e8 e a,2 \bar "|."
  
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
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son.
}

bas = <<
  \basdolny
  \basgorny
>>

%\new Staff{
%  \bas
%}
%\addlyrics \bastekst