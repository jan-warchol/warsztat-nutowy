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

\header {
  title = "Cantate Domino"
  composer = "Vytautas Miškinis (*1954)"
  composerShort = "(Miškinis)"
  translation = \markup {
    \typewriter {
      \column {
        \vspace #0.5
        \bold "Cantate    Domino canticum novum, et benedicite   nomini eius, quia mirabilia fecit."
        "Śpiewajcie Panu   pieśń    nową,  i  błogosławcie imię   Jego, bo   cuda      uczynił."
        \bold "Cantate    et exsultate,  et psalite    in cithara voce psalmi."
        "Śpiewajcie i  wielbijcie, i  śpiewajcie z  cytrą        psalmy."
      }
    }
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
    \piecioliniasopranu
    \piecioliniaaltu
    \piecioliniatenoru
    \piecioliniabasu
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
