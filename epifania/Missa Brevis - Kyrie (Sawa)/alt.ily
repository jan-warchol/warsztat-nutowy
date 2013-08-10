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
  e8 f e4. e8
  c8 d e2
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
  Ky -- ri -- e e -- le -- i -- son,
}

alt = <<
  \altdolny
  \altgorny
>>
