\version "2.17.3" % wersja LilyPonda dla której został napisany plik

% ustawiam rozmiar pięciolinii (w punktach drukarskich)
% odpowiednim rozmiarem dla nut chóralnych jest 15-17 pt,
% dla nut solowych 20 pt (wartość domyślna to 20).
#(set-global-staff-size 15.75)

% w bloku \paper podaję ogólne ustawienia strony
\paper {
  indent = 0 \mm  % nie chcę wcięcia w pierwszym systemie
  system-count = #15  % zadaję liczbę systemów
  page-count = #4  % zadaję liczbę stron
}

\header {
  % informacje do nagłówka
  title = "Tota pulchra es Maria"
  subtitle = Motet
  composer = "Grzegorz Gerwazy Gorczycki (1665? - 1734)"
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
      % wyłączam automatyczne belkowanie,
      % tak jak zazwyczaj się to robi dla muzyki wokalnej
      \autoBeamOff
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
      \autoBeamOff
      \dynamicUp
      \include "altoMusic.ily"
    }
    \addlyrics \include "altoWords.ily"

    \new Staff = tenory \with { \consists "Ambitus_engraver" } {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \autoBeamOff
      \dynamicUp
      \include "tenorMusic.ily"
    }
    \addlyrics \include "tenorWords.ily"

    \new Staff = basy \with { \consists "Ambitus_engraver" } {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \autoBeamOff
      \dynamicUp
      \include "bassMusic.ily"
    }
    \addlyrics \include "bassWords.ily"
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #0.5
      \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #0.5
    }
    \context {
      \Score
      \override BarNumber #'break-visibility = #'#(#f #t #t)
      \override BarNumber #'self-alignment-X =
      #(lambda (grob)
         (let ((break-dir (ly:item-break-dir grob)))
           (set! (ly:grob-property grob 'self-alignment-X)
                 (if (= break-dir RIGHT)
                     1
                     0))))

      \override BarNumber #'stencil =
      #(lambda (grob)
         (let ((break-dir (ly:item-break-dir grob)))
           (set! (ly:grob-property grob 'font-size)
                 (if (= break-dir RIGHT)
                     -1
                     -3))
           (ly:text-interface::print grob)))
    }
  }
}
