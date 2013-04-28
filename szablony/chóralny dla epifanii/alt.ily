\version "2.16.1"

% -*- master: ./pomocnicze/alt-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "altgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

altdolny = \relative f' {
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

altgorny = \relative f' {
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  
}


alttekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione do partii
  % dolnego głosu (jeśli jest podział).
  
}

piecioliniaaltu = \new Staff \with { \consists "Ambitus_engraver" } {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \set Staff.instrumentName = "A "
  \set Staff.shortInstrumentName = "A "
  \dynamicUp
  \tupletUp
  \clef G
  <<
    \altdolny
    \altgorny
  >>
}
\addlyrics \alttekst
