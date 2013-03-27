\version "2.16.1"
#(set-global-staff-size 16)

\paper {
  indent = 0 \mm
  left-margin = 12 \mm
  right-margin = 14 \mm
  top-markup-spacing #'basic-distance = 12
  markup-system-spacing #'basic-distance = 22
  top-system-spacing #'basic-distance = 12
  last-bottom-spacing #'basic-distance = 12
  %page-count =
  system-count = 6
  systems-per-page = 3
  %\include "EpifaniaHeaders.ily"
}

\header {
  title = "Ave Maria"
  composer = "Marek Jasiński"
}

%compress = { \markup \scale #'(0.8 . 1) }

\score {
  \new ChoirStaff <<
    \include "sopran.ily"
    \include "alt.ily"
    \include "tenor.ily"
    \include "bas.ily"
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \compressFullBarRests
    %\set Score.tempoHideNote = ##t

    %\override Lyrics.VerticalAxisGroup
    %#'nonstaff-unrelatedstaff-spacing #'padding = #0.5
    \override DynamicTextSpanner #'style = #'none

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
