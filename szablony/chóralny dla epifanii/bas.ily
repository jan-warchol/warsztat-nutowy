\version "2.16.1"

% -*- master: ./pomocnicze/bas-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisywać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "basgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

basdolny = \relative f {
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  
}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

basgorny = \relative f {
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  
}


bastekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

}

bas = <<
  \basdolny
  \basgorny
>>
