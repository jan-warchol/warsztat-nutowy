\version "2.16.1"
#(set-global-staff-size 17)

\paper {
  indent = 0 \mm
  left-margin = 12 \mm
  right-margin = 14 \mm
  top-markup-spacing #'basic-distance = 5
  %markup-system-spacing #'basic-distance = 40
  %page-count =
  system-count = 9
  \include "./pomocnicze/epifanijny-styl-nagłówków.ily"
}

\header {
  title = "Ave Maria"
  composer = "Romualds Jermaks (*1931)"
  adres-biblijny = "Łk 1,28"
  kompozytor-krotki = "Jermaks"
  przygotowanie-nut = \markup \right-column {
    \bold "przygotowanie nut:"
    "Dominika Kochanowska"
    "Basia Mroczek"
    "Janek Warchoł"
    " "
  }
  tlumaczenie = \markup \scale #'(0.95 . 1) \typewriter \column {
    " "
    \bold
    "Ave     Maria, gratia plena, Dominus   tecum;"
    "Zdrowaś Mario, łaski  pełna, Pan     z Tobą;"
    " "
    \bold
    "benedicta      tu in     mulieribus,  et benedictus    fructus ventris tui,     Iesus."
    "błogosławionaś Ty między niewiastami, i  błogosławiony owoc    łona    Twojego, Jezus."
    " "
    \bold
    "Sancta Maria, Mater Dei,  ora      pro nobis peccatoribus,"
    "Święta Mario, Matko Boża, módl się za  nami  grzesznymi,"
    " "
    \bold
    "nunc  et in hora    mortis  nostrae. Amen."
    "teraz i  w  godzinę śmierci naszej.  Amen."
    " "
  }
}

\include "sopran.ily"
\include "alt.ily"
\include "tenor.ily"
\include "bas.ily"

\score {
  \new ChoirStaff <<
    \new Staff = panie <<
      \new Voice = sopran {
        \sopran
      }
      \new Voice = alt {
        \alt
      }
    >>
    \new Lyrics \lyricsto sopran \soprantekst
    \new Staff = panowie <<
      \new Voice = tenor {
        \tenor
      }
      \new Voice = bas {
        \bas
      }
    >>
    \new Lyrics \lyricsto bas \bastekst
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \compressFullBarRests
    %\set Score.tempoHideNote = ##t

    \override Lyrics.VerticalAxisGroup
    #'nonstaff-unrelatedstaff-spacing #'padding = #0.5

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
