\version "2.16.1" % wersja LilyPonda dla której został napisany plik

% ustawiam rozmiar pięciolinii (w punktach drukarskich)
% odpowiednim rozmiarem dla nut chóralnych jest 15-17 pt,
% dla nut solowych 20 pt (wartość domyślna to 20).
#(set-global-staff-size 15.1)

% w bloku \paper podaję ogólne ustawienia strony
\paper {
  indent = 0 \mm  % nie chcę wcięcia w pierwszym systemie
  line-width = 184 \mm
  system-count = #15  % zadaję liczbę systemów
  page-count = #4  % zadaję liczbę stron
}

\header {
  % informacje do nagłówka
  title = "Tota pulchra es Maria"
  subtitle = Motet
  composer = "Grzegorz Gerwazy Gorczycki (1665? - 1734)"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

% \markup to jakby pole tekstowe
\markup {
  \typewriter {
    % używam czcionki o stałej szerokości
    \column {
      \bold "Tota pulchra es Maria et macula non est in te."
      "Cała piękna jesteś, Maryjo i zmazy nie ma w Tobie."
      " "
      \bold "Tu gloria Jeruzalem, Tu laetitia Israel,"
      "Tyś chwałą Jeruzalem, Tyś radością Izraela,"
      " "
      \bold "Tu honorificentia populi nostri,"
      "Tyś chlubą naszego narodu."
      " "
      \bold "Tu advocata peccatorum, o Maria."
      "Tyś orędowniczką grzeszników, o Maryjo."
      " "
      \bold "Alleluja."
      "Alleluja."
      " "
    }
  }
}

% definiuję strukturę:
\score {
  \new ChoirStaff % grupa pięciolinii spięta klamrą chóralną
  <<
    % definiuję pięciolinię sopranu i dodaję do niej funkcję
    % obliczającą ambitus (rozpiętość partii):
    \new Staff = soprany \with { \consists "Ambitus_engraver" } {
      % ustawiam klucz:
      \clef treble
      % ustawiam nazwę wyświetlaną w pierwszym systemie:
      \set Staff.instrumentName = "S "
      % ustawiam nazwę wyświetlaną w pozostałych systemach:
      \set Staff.shortInstrumentName = "S "
      % cała dynamika ma być nad pięciolinią żeby nie kolidować z librettem:
      \dynamicUp
      % dołączam zawartość pliku z melodią sopranu:
      \include "sopranoMusic.ily"
    }
    % dodaję tekst, biorąc go z pliku sopranoWords.ily
    \addlyrics \include "sopranoWords.ily"

    \new Staff = alty \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \dynamicUp
      \include "altoMusic.ily"
    }
    \addlyrics \include "altoWords.ily"

    \new Staff = tenory \with { \consists "Ambitus_engraver" } {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \dynamicUp
      \include "tenorMusic.ily"
    }
    \addlyrics \include "tenorWords.ily"

    \new Staff = basy \with { \consists "Ambitus_engraver" } {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \dynamicUp
      \include "bassMusic.ily"
    }
    \addlyrics \include "bassWords.ily"
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    % pokazuj wszystkie numery taktów
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    % wyśrodkuj numery taktów na kreskach taktowych
    \override Score.BarNumber #'self-alignment-X = #CENTER
  }
}
