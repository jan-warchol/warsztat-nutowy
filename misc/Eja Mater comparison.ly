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
    \line { \bold "wersja A" (Finale) }
  }
}

wersjaB = \markup {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    \line { \bold "wersja B" (LilyPond) }
  }
}

\markup \vspace #0
\markup \large \wersjaA
\markup \vspace #0

\markup \translate #'(-3 . 0)
\epsfile #X #117 #"eja-1f.eps"

\markup \vspace #1
\markup \large \wersjaB
\markup \vspace #0

\markup \translate #'(-3 . 0)
\epsfile #X #117 #"eja-1l.eps"

\markup \vspace #3
\markup \large {
  \column {
    \justify {
    }
  }
}
\markup \vspace #1

\markup \translate #'(0.7 . 0) \line {
  \column {
    \wersjaA
    \vspace #0.1
    \translate #'(-0.65 . 0)
    \epsfile #X #50 #"eja-8f.eps"
  }
  \column {
    \wersjaB
    \vspace #0.1
    \translate #'(-0.75 . 0)
    \epsfile #X #50 #"eja-8l.eps"
  }
}