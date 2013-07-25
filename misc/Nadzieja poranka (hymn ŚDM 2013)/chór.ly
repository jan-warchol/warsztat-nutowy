\version "2.16.1"
#(ly:set-option 'relative-includes #t)

#(set-global-staff-size 16)

\paper {
  indent = 0 \mm
  left-margin = 14 \mm
  right-margin = 12 \mm
  %top-markup-spacing #'basic-distance = 5
  %markup-system-spacing #'basic-distance = 40
  %page-count =
  %system-count =
  %\include "./pomocnicze/epifanijny-styl-naglowkow.ily"
}


\header {
  title = "Nadzieja poranka"
  subtitle = "Hymn Światowych Dni Młodzieży Rio 2013"
  composer = "muzyka i tekst: ks. José Cândido"
  poet = "tłum. Katarzyna i Dominik Osińscy"
  dedication = "tytuł oryg.: Esperança do Amanhecer"
  tagline = \markup \center-column {
    \bold "skład nut:"
    "Janek Warchoł (jan.warchol@gmail.com)"
  }
  %tlumaczenie = \markup \typewriter \column {
  %  \vspace #1
  %  \bold
  %  ""
  %  ""
  %}
}

slowa = \lyricmode {
  \set stanza = \markup \italic "ref."
  Chry -- stus nas za -- pra -- sza:
  \override LyricText #'font-shape = #'italic
  Przyjdź -- cie, przy -- ja -- cie -- le!
  \revert LyricText #'font-shape
  Chry -- stus nas po -- sy -- ła:
  \override LyricText #'font-shape = #'italic
  Bądź -- cie mis -- jo -- na -- rza -- mi!
  \revert LyricText #'font-shape
}

\include "./pomocnicze/dzielenie-glosow.ily"
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
    \addlyrics { \slowa \slowa \slowa }

    \new Staff = alt {
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \dynamicUp
      \tupletUp
      \clef G

      \alt
    }
    \addlyrics { \slowa \slowa \slowa }

    \new Staff = tenor {
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \dynamicUp
      \tupletUp
      
      \clef "G_8"
      \tenor
    }
    \addlyrics { \slowa \slowa \slowa }

    \new Staff = bas {
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \dynamicUp
      \tupletUp
      \clef F

      \bas
    }
    \addlyrics { \slowa \slowa \slowa }
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \textLengthOn
    \override MultiMeasureRest #'expand-limit = #0

    \compressFullBarRests
    %\set Score.tempoHideNote = ##t

    \override Lyrics.VerticalAxisGroup
    #'nonstaff-unrelatedstaff-spacing #'padding = #0.5

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
