\version "2.17.2"
#(set-global-staff-size 15)

\paper {
  indent = 0 \mm
  left-margin = 14 \mm
  right-margin = 12 \mm
  %top-markup-spacing #'basic-distance = 5
  %markup-system-spacing #'basic-distance = 40
  page-count = 3
  system-count = 12
  systems-per-page = 4
  \include "./pomocnicze/epifanijny-styl-nagłówków.ily"
}

%{
  FIXME: there's too much space between:
  - title and translation
  - translation and music
  - editors and composer
  but i can only insert full empty lines - i.e.
  \vspace #0.4 has the same effect as \vspace #1
%}

\header {
  title = "Cantate Domino"
  composer = "Vytautas Miškinis (*1954)"
  kompozytor-krotki = "Miškinis"
  przygotowanie-nut = \markup \right-column {
    \bold "przygotowanie nut:"
    "Basia Mroczek"
    "Marlena Świło"
    "Adrian Trzeciak"
    "Janek Warchoł"
    " "
  }
  tlumaczenie = \markup \scale #'(0.95 . 1) \typewriter \column {
    " "
    \bold
    "Cantate    Domino canticum novum, et benedicite   nomini eius, quia mirabilia fecit."
    "Śpiewajcie Panu   pieśń    nową,  i  błogosławcie imię   Jego, bo   cuda      uczynił."
    \bold
    "Cantate    et exsultate,  et psalite    in cithara voce psalmi."
    "Śpiewajcie i  wielbijcie, i  śpiewajcie z  cytrą        psalmy."
    " "
  }
}

\include "./pomocnicze/dzielenie-głosów.ily"
\include "./pomocnicze/specjalna-dynamika.ily"
\include "sopran.ily"
\include "alt.ily"
\include "tenor.ily"
\include "bas.ily"

\score {
  \new ChoirStaff <<
    \new Staff = sopran {
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \dynamicUp
      \tupletUp
      \clef G

      \sopran
    }
    \addlyrics \soprantekst

    \new Staff = alt {
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \dynamicUp
      \tupletUp
      \clef G

      \alt
    }
    \addlyrics \alttekst

    \new Staff = tenor {
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \dynamicUp
      \tupletUp
      \clef "G_8"

      \tenor
    }
    \addlyrics \tenortekst

    \new Staff = bas {
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \dynamicUp
      \tupletUp
      \clef F

      \bas
    }
    \addlyrics \bastekst
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \compressFullBarRests
    %\set Score.tempoHideNote = ##t

    \override Lyrics.VerticalAxisGroup
    #'nonstaff-unrelatedstaff-spacing #'padding = #0.5

    %\override Score.BarNumber #'break-visibility = #'#(#f #t #t)

    \override Score.BarNumber #'self-alignment-X =
    #(lambda (grob)
       (let ((break-dir (ly:item-break-dir grob)))
         (set! (ly:grob-property grob 'self-alignment-X)
               (if (= break-dir RIGHT)
                   1
                   0))))

    \override Score.BarNumber #'stencil =
    #(lambda (grob)
       (let ((break-dir (ly:item-break-dir grob)))
         (set! (ly:grob-property grob 'font-size)
               (if (= break-dir RIGHT)
                   -1
                   -3))
         (ly:text-interface::print grob)))
  }
}
