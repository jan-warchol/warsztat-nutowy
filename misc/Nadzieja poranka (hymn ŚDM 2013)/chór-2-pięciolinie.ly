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

\header {
  title = "Nadzieja poranka"
  subtitle = "Hymn Światowych Dni Młodzieży Rio 2013"
  %composer =
  %kompozytor-krotki =
  %werset =
  %przygotowanie-nut = \markup \column \right-align {
  %  \bold "przygotowanie nut:"
  %  ""
  %}
  %tlumaczenie = \markup \typewriter \column {
  %  \vspace #1
  %  \bold
  %  ""
  %  ""
  %}
}

nieparzZwrotki = \markup \column {
  \line { \bold 1. zwrotka \italic "(Wiem, że...)" }
  \line { \bold 3. zwrotka \italic "(Tu od wschodu...)" }
}
parzZwrotki = \markup \column {
  \line { \bold 2. zwrotka \italic "(Oto młodzież...)" }
  \line { \bold 4. zwrotka \italic "(Odpowiadając...)" }
}

\include "./pomocnicze/dzielenie-głosów.ily"
\include "sopran.ily"
\include "alt.ily"
\include "tenor.ily"
\include "bas.ily"

\score {
  \new ChoirStaff <<
    \new Staff = panie {
      \set Staff.instrumentName = \markup \column { "S " "A " }
      \set Staff.shortInstrumentName = \markup \column { "S " "A " }
      \dynamicUp
      \tupletUp
      \clef G
      <<
        \new Voice = sopran {
          \voiceOne
          \sopran
        }
        \new Voice = alt {
          \voiceTwo
          \alt
        }
      >>
    }
    \addlyrics \soprantekst

    \new Staff = panowie {
      \set Staff.instrumentName = \markup \column { "T " "B " }
      \set Staff.shortInstrumentName = \markup \column { "T " "B " }
      \dynamicUp
      \tupletUp
      \clef F
      <<
        \new Voice = tenor {
          \voiceOne
          \tenor
        }
        \new Voice = bas {
          \voiceTwo
          \bas
        }
      >>
    }
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \textLengthOn
    \override MultiMeasureRest #'expand-limit = #0

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
