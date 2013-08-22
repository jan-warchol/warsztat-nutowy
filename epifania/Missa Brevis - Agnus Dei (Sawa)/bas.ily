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
  a2 e4
  a e r8 e
  a,4 a8 a e' e
  a4 e r
  e8 e a4 a
  a e r
  a2 e4
  a e r8 e
  a,4 a8 a e' e
  a4 e r
  e8 e a4 a
  a e r
  f\melisma e\melismaEnd d
  d e r8 e
  f4 e8 e d d
  c\melisma d\melismaEnd e4 r
  c d2
  c4 d2
  e4\melisma d2\melismaEnd
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

basgorny = \relative f {
  \clef bass
  % podaj tonację, na przykład \key g \minor
  \key a \minor
  % podaj metrum, na przykład \time 4/4
  \time 3/4
  % wpisz nuty:
  \unisono {
  a2 e4
  a e r8 e
  a,4 a8 a e' e
  a4 e r
  e8 e a4 a
  a e r
  a2 e4
  a e r8 e
  a,4 a8 a e' e
  a4 e r
  e8 e a4 a
  a e r
  f\melisma e\melismaEnd d
  d e r8 e
  f4 e8 e d d
  c\melisma d\melismaEnd e4 r
  c d2
  c4 d2
  e4\melisma d2\melismaEnd}
  e2. \bar "|."

}


bastekst = \lyricmode {
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

bas = <<
  \basdolny
  \basgorny
>>

%\new Staff{
%  \bas
%}
%\addlyrics \bastekst
