\version "2.16.1"
#(set-global-staff-size 16)

\paper {
  indent = 0 \mm
  left-margin = 12 \mm
  right-margin = 14 \mm
  %top-markup-spacing #'basic-distance = 5
  %markup-system-spacing #'basic-distance = 40
  %page-count =
  %system-count =
  \include "./pomocnicze/epifanijny-styl-nagłówków.ily"
}

% TODO:
% beamexception
% numery taktów

\header {
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
