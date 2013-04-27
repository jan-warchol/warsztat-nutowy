\version "2.16.1"

\include "./dzielenie-głosów.ily"

\new Staff \with { \consists "Ambitus_engraver" } {
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
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
  \dynamicUp
  \tupletUp
  \clef bass
  % podaj tonację, na przykład \key g \minor
  
  % podaj metrum, na przykład \time 4/4
  
  % wpisz nuty:
  <<
    \relative f {
      % Jeśli ten głos nie dzieli się na dolny i górny,
      % wpisz całą partię tutaj a następnego \relative { }
      % po prostu nie używaj.
      % Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
      % (łącznie z tym, co jest śpiewane unisono):
      
    }
    \relative f {
      % Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
      % (łącznie z tym, co jest śpiewane unisono).
      % Zapewne będzie Ci wygodnie skopiować wspólne
      % fragmenty z tego, co jest już wpisane powyżej.
      % Żeby odpowiednio połączyć obie partie, użyj
      % \unisono { } , \rownyRytm { } i \podzial { }
      % na odpowiednich fragmentach tej partii.
      
    }
  >>
}
\addlyrics {
  % Tu wpisz libretto. Będzie ono przyczepione do partii
  % dolnego głosu (jeśli jest podział).
  
}