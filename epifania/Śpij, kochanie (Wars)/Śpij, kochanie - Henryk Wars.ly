\version "2.17.3"
#(set-global-staff-size 15.1)

ml = #(define-music-function (parser location off) (number?)
        #{
          \once \override Lyrics.LyricText #'X-offset = #off
        #})

\paper {
  indent = 10 \mm
}

\header {
  title = "Śpij, kochanie"
  composer = "Henryk Wars (1902-1977)"
  poet = "sł. Ludwik Starski"
  arranger = "opr. Włodzimierz Sołtysik"
  copyright = "przepisała: Aleksandra Woźniak"
}

\include "sopran.ily"
\include "alt.ily"
\include "tenor.ily"
\include "bas.ily"

\score {
  \new ChoirStaff <<
    \new Staff = sopran {
      \set Staff.instrumentName = "Sopran "
      \set Staff.shortInstrumentName = "S "
      \dynamicUp
      \tupletUp
      \clef G

      \sopran
    }
    \addlyrics \soprantekst

    \new Staff = alt {
      \set Staff.instrumentName = "Alt "
      \set Staff.shortInstrumentName = "A "
      \dynamicUp
      \tupletUp
      \clef G

      \alt
    }
    \addlyrics \alttekst

    \new Staff = tenor {
      \set Staff.instrumentName = "Tenor "
      \set Staff.shortInstrumentName = "T "
      \dynamicUp
      \tupletUp
      \clef "G_8"

      \tenor
    }
    \addlyrics \tenortekst

    \new Staff = bas {
      \set Staff.instrumentName = "Bas "
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

    \override LyricText #'stencil =
    #(lambda (grob)
       (ly:stencil-scale (lyric-text::print grob) 0.95 1))

    \context {
      \Staff
      \consists "Ambitus_engraver"
    }

    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)

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
