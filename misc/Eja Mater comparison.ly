\version "2.16.1"
#(set-global-staff-size 18)

\paper {
  line-width = 180 \mm
  top-margin = 8 \mm
}

\header	{
  title = \markup {
    Porównanie składu nut
  }
  subtitle = \markup {
    \normal-text {
      utwór: \italic { Stabat Mater }
      (A. Dvořák, fragmenty)
    }
  }
  tagline = \markup \normal-text {
    autor analizy: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

wersjaA = \markup {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    \line { \bold "wersja A" \tiny "(zrobiona w Finale)" }
  }
}

wersjaB = \markup {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    \line { \bold "wersja B" \tiny "(zrobiona w LilyPondzie)" }
  }
}

\markup \vspace #0.5
\markup \large \wersjaA
\markup \vspace #0

\markup \translate #'(-3 . 0)
\epsfile #X #117 #"eja-1f.eps"

\markup \vspace #1.5
\markup \large \wersjaB
\markup \vspace #0

\markup \translate #'(-3 . 0)
\epsfile #X #117 #"eja-1l.eps"

\markup \vspace #3
\markup \large {
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
    }
  }
}
\markup \vspace #0.5

\markup \translate #'(0.7 . 0) \line {
  \column {
    \wersjaA
    \vspace #0.1
    \translate #'(-0.65 . 0)
    \epsfile #X #47 #"eja-8f.eps"
  }
  \column {
    \wersjaB
    \vspace #0.1
    \translate #'(-0.75 . 0)
    \epsfile #X #47 #"eja-8l.eps"
  }
}