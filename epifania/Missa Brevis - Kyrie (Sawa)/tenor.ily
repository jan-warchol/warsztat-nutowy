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
  e8 f e4. e8
  a b c2
  e,8 f e4. e8
  gis a b2
  e,8 e b'4 a
  a8 a b2
  g8\melisma a\melismaEnd b4 c
  b8 c d2
  e,8\melisma fis\melismaEnd gis4 a
  gis8 a b2
  c4 b a
  a8 a b2
  e,8 f e4. e8
  a b c2
  e,8 f e4. e8
  gis a b2
  e,8 e b'4 a
  gis8 e a2 \bar "|."
  
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

tenor = <<
  \tenordolny
  \tenorgorny
>>

%\new Staff{
%  \tenor
%}
%\addlyrics \tenortekst
