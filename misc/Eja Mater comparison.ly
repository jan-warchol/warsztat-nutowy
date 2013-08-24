\version "2.17.2"
#(set-global-staff-size 16)

ml = #(define-music-function (parser location off) (number?)
        #{ \once \override Lyrics.LyricText #'X-offset = #off #})

\paper {
  ragged-right = ##f
  line-width = 180 \mm
  top-margin = 10 \mm
}

\header	{
  title = \markup \larger {
    Porównanie składu nut
  }
  subtitle = \markup {
    \normal-text {
      utwór: \italic { Stabat Mater }
      (A. Dvořák, fragmenty)
    }
  }
  tagline = \markup \larger \normal-text {
    autor analizy: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

wersjaA = \markup {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    \line {
      \larger \bold "wersja A"
      \smaller "(Finale)"
    }
  }
}

wersjaB = \markup {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    \line {
      \larger \bold "wersja B"
      \smaller "(LilyPond)"
    }
  }
}

\markup \vspace #1.5
\markup \large \wersjaA
\markup \vspace #0

\markup \translate #'(-5 . 0)
\epsfile #X #133 #"/home/janek/zasoby/engraving/comparison-samples/eja-1f.eps"

\markup \vspace #2.5
\markup \large \wersjaB
\markup \vspace #0

\score {
  \new ChoirStaff
  <<
    \new Staff = soprany {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \autoBeamOff
      \relative c'' {
        \key c \minor
        \time 4/4
        \tempo "Andante con moto" 4=69
        R1*7 | % 8
        r4 g8.\p as16 g4 g4 | % 9
        r4 g8. as16 g4 g4 |
        r4 g8. \< as16 g4 ( as4 \! ) | % 11
        as4 \mf r4 r2 | % 12
      }

    }
    \addlyrics \lyricmode {
      E -- ia, \ml #-0.3 Ma -- ter, fons a --
      mo -- ris, fons a -- mo -- ris,
    }

    \new Staff = alty {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \autoBeamOff
      \relative c' {
        \key c \minor
        \time 4/4
        \tempo "Andante con moto" 4=69
        R1*7 | % 8
        r4 es8. \p es16 es4 es4 | % 9
        r4 es8. es16 es4 es4 |
        r4 es8. \< es16 es2 \! | % 11
        f4 \mf r4 r2 | % 12
      }
    }
    \addlyrics \lyricmode {
      E -- ia, \ml #-0.3 Ma -- ter, fons a
      -- mo -- ris, fons a -- mo -- ris,
    }

    \new Staff = tenory {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \autoBeamOff
      \relative c' {
        \key c \minor
        \time 4/4
        \tempo "Andante con moto" 4=69
        R1*7 | % 8
        r4 c8. \p c16 c4 c4 | % 9
        r4 c8. c16 c4 c4 |
        r4 c8. \< c16 c2 \! | % 11
        d4 \mf r4 r2 | % 12
      }
    }
    \addlyrics \lyricmode {
      E -- ia, \ml #-0.3 Ma -- ter, fons a
      -- mo -- ris, fons a -- mo -- ris,
    }

    \new Staff = basy {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \autoBeamOff
      \relative c {
        \key c \minor
        \time 4/4
        \tempo "Andante con moto" 4=69
        R1*6 | % 7
        r2 r4 c8. \p d16 | % 8
        es8. ( [ g16 ) ] g4 r4 c,8. d16 | % 9
        es8. ( [ g16 ) ] g4 r4 c,8. d16 |
        es8. ( [ bes'16 \< ) ] << bes4. ( { s4 s8\! } >> as16 [ g16 \> ) ] f8 es8 \! | % 11
        d4 d4 r4 d8. \p es16 | % 12
      }
    }
    \addlyrics \lyricmode {
      E -- ia, Ma -- ter, fons a --
      mo -- ris, e -- ia, Ma -- ter,  __ fons a -- mo -- ris, me \ml #-0.5 se-
    }
  >>

  \layout {
    indent = 0
    \dynamicUp
    \compressFullBarRests
    \override MultiMeasureRest #'expand-limit = #3
    \override Staff.OctavateEight #'font-shape = #'roman
    \override Staff.OctavateEight #'font-size = #-3.3
    \override DynamicTextSpanner #'style = #'none
    \override TextScript #'direction = #UP
    \override Staff.StaffSymbol #'thickness = #0.7
    \override Stem #'thickness = #1.4
    \override Slur #'thickness = #1.5
    \override Tie #'line-thickness = #1
    \override Hairpin #'thickness = #1.25
    \override Score.SpacingSpanner #'common-shortest-duration
    = #(ly:make-moment 1 8)

    \context {
      \Lyrics
      \override LyricText #'font-size = #0.5
      \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #0.5
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.35
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


\markup \vspace #3.5
\markup \large \larger {
  \column {
    \justify {
      Wiele nut jest składanych w programie Finale.
      Warto zdawać sobie sprawę, że popełnia on sporo błędów,
      które trzeba ręcznie poprawiać, żeby dostać dobre nuty –
      w wersji \bold A widać kilka takich niedociągnięć.
      Wersja \bold B to ten sam fragment utworu złożony
      przeze mnie w programie LilyPond.
    }
    \vspace #0.5
    \justify {
      Przykładowo, porównaj położenie kropek – zwłaszcza przy c
      w ósmym takcie w basach (“fons”).
      Czasami zdarza się nawet, że Finale zakrywa kropkę
      następną nutą!
    }
    \vspace #0.5
    \justify {
      Ponadto, w wersji \bold A rozmieszczenie nut w takcie 10
      sugeruje, że szesnastki w basach wypadają "na trzecią" miarę
      (razem z “mo” w pozostałych głosach) – a tak nie jest!
      To naprawdę poważny błąd, który bardzo myli śpiewających.
      Niestety, ten problem nie należy do rzadkości w przypadku
      Finale.
    }
    \vspace #0.5
    \justify {
      Innym, bardzo często spotykanym problemem jest chaotyczne
      rozmieszczenie nut, nieodpowiadające wartościom rytmicznym:
      ósemki zajmujące więcej miejsca niż ćwierćnuty, melodie
      o równym rytmie "w których" każda nuta zajmuje inną ilość
      miejsca itp.
    }
    \vspace #0.5
    \justify {
      Oczywiście żaden program do składu nut nie jest doskonały.
      Problem z Finale polega na tym, że błędy pojawiają się
      w nim po prostu zbyt często –
      jako przykład może posłużyć trzecia strona z porównywanej
      powyżej partytury (na odwrocie kartki).
    }
  }
}
