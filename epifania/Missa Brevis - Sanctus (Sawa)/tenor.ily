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
  \time 4/4
  
  % wpisz nuty:
  e4\melisma c'8 a\melismaEnd b2
  g4\melisma e'8 c\melismaEnd d2
  e4 d c8 c b4
  a8\melisma b c\melismaEnd d e4 f
  e2 r8 e e e 
  d d4. r8 d d d
  cis cis4. r8 cis cis cis
  b4\melisma a gis fis\melismaEnd
  gis2 r4 e
  cis'4.\melisma a8\melismaEnd e4 e
  cis'4.\melisma a8\melismaEnd e4 e
  cis' b a gis
  a2 a~
  a  gis8\melisma a\melismaEnd b\melisma cis\melismaEnd
  d4\melisma e fis e\melismaEnd
  e1 \bar "||"
  
  %takt 17
  cis2\melisma cis,4\melismaEnd dis
  eis2 fis
  gis4 gis a\melisma b\melismaEnd
  cis2 b
  a gis
  fis eis4 eis
  fis2 gis4 fis
  gis2 r4 e
  cis'4.\melisma a8\melismaEnd e4 e
  cis'4.\melisma a8\melismaEnd e4 e
  cis' b a gis
  a2 a~
  a  gis8\melisma a\melismaEnd b\melisma cis\melismaEnd
  d4\melisma e fis e\melismaEnd
  e1 \bar "|."

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

tenor = <<
  \tenordolny
  \tenorgorny
>>

%\new Staff{
%  \tenor
%}
%\addlyrics \tenortekst
