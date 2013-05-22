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
  \bold {
    \override #'(thickness . 2)
    \override #'(box-padding . 0.4)
    \box {
      \pad-to-box #'(0 . 0) #'(0 . 2.1)
      "wersja A"
    }
  }
}

wersjaB = \markup {
  \bold {
    \override #'(thickness . 2)
    \override #'(box-padding . 0.4)
    \box {
      \pad-to-box #'(0 . 0) #'(0 . 2.1)
      "wersja B"
    }
  }
}

\markup \vspace #0
\markup \large \wersjaA
\markup \vspace #0

\markup \translate #'(-3 . 0)
\epsfile #X #117 #"eja-1f.eps"

\markup \vspace #2
\markup \large \wersjaB
\markup \vspace #0

\markup \translate #'(-3 . 0)
\epsfile #X #117 #"eja-1l.eps"

\markup \vspace #3
\markup \large \fill-line {
  \column {
    \justify {
    }
  }
}
\markup \vspace #2

\markup \translate #'(0.7 . 0) \line {
  \column {
    \wersjaA
    \translate #'(-0.65 . 0)
    \epsfile #X #50 #"eja-8f.eps"
  }
  \column {
    \wersjaB
    \translate #'(-0.75 . 0)
    \epsfile #X #50 #"eja-8l.eps"
  }
}