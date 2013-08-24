\version "2.17.2"

\header {
  title = \markup \smaller {
    Porównanie składu nut
  }
  subtitle = \markup {
    \normal-text { utwór: \italic { Feste Lariane } (fragment) }
  }
  tagline = \markup \smaller \normal-text {
    autor analizy: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\markup \vspace #2
\markup \large \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    "wersja A"
  }
}
\markup \vspace #0.5

\markup \translate #'(0 . 0)
\epsfile #X #102 #"/home/janek/zasoby/engraving/comparison-samples/feste.eps"

\markup \vspace #2.5
\markup \large \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    "wersja B"
  }
}
\markup \vspace #1

\paper {
  top-margin = 12 \mm
  left-margin = 15 \mm
  right-margin = 15 \mm
  system-system-spacing #'basic-distance = 18
}

cv = \markup {
  \combine
  \override #'(thickness . 1.5)
  \translate #'(0.85 . -0.3)
  \draw-line #'(0 . 2.2)
  C5
}

#(define rhf rightHandFinger)

\new Staff <<
  \clef "G_8"
  \key a \minor
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \bar "|:"
  \new Voice \relative f, {
    \voiceOne
    \override Beam #'positions = #'(5 . 5)
    \set Voice.beatStructure = #'(1 1 1 1 1 1)
    \set fingeringOrientations = #'(down)
    \set strokeFingerOrientations = #'(left)
    e32-\rhf #1
    \set strokeFingerOrientations = #'(up)
    \override StrokeFinger #'extra-offset = #'(0 . 3)
    e''-\rhf #4 e-\rhf #3 e-\rhf #2
    b e e e
    \override Beam #'positions = #'(5.5 . 5.5)
    d fis fis fis
    b, fis' fis fis
    \override Beam #'positions = #'(6 . 6)
    d gis gis gis
    b, gis' gis gis
    |
    \override Beam #'positions = #'(6.5 . 6.5)
    \once \override TextScript #'extra-offset = #'(0 . 0.4)
    a,,^\cv a'' a a
    c, a' a a
    e a a a
    c, a' a a
    \override Beam #'positions = #'(7.5 . 7.5)
    e c' c c
    c, c' c c
    |
    \override Beam #'positions = #'(7 . 7)
    d,, b'' b b
    d, b' b b
    \override Beam #'positions = #'(6.5 . 6.5)
    f <a-1> a a
    d, a' a a
    \override Beam #'positions = #'(6 . 6)
    f <gis-1> gis gis
    d gis gis gis
    |
    \override Beam #'positions = #'(6.5 . 6.5)
    \once \override TextScript #'extra-offset = #'(0 . 0.4)
    a,,^\cv a'' a a
    c, a' a a
    e a a a
    c, a' a a
    e a a a
    c, a' a a
  }
  \new Voice \relative f {
    \voiceTwo
    \set Voice.beatStructure = #'(2 2 2)
    \set fingeringOrientations = #'(down)
    \override Fingering #'extra-offset = #'(0 . 1)
    \override Fingering #'X-offset = #-1.2
    e,8 b'' d b d b
    a, c' e c e c
    <d,-0> <d'-3> <f-2> <d-3> <f-2> <d-3>
    a, c' e c e c
  }
>>

\layout {
  indent = 0
  \override Score.SpacingSpanner #'common-shortest-duration
  = #(ly:make-moment 1 16)

  \override Fingering #'font-size = #-6.5
  \override StrokeFinger #'font-size = #-2.5
  % i don't see why this shouldn't be default...
  \override Fingering #'staff-padding = #'()
  \override StrokeFinger #'staff-padding = #'()

  \override Staff.OctavateEight #'font-shape = #'roman
  \override Staff.OctavateEight #'font-size = #-3.3

  \override Staff.BarLine #'hair-thickness = #2
  \override Stem #'thickness = #1.4

  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\markup \vspace #2
\markup \fill-line {
  \null
  \override #'(thickness . 1.5)
  \override #'(span-factor . 2/3)
  \draw-hline
  \null
}
\markup \vspace #2.5

\markup \column {
  \justify {
    Nuty u góry (wersja \concat { \bold A ) } pochodzą "z drugiej"
    części \italic { Repertuaru początkującego gitarzysty }
    wydawnictwa Absonic; wersja \bold B to ten sam fragment
    utworu złożony przeze mnie w programie LilyPond.
  }
  \vspace #0.5
  \justify {
    Podstawową różnicą w składzie jest
    ułożenie trzydziestodwójkowych belek.
    Powinny one być poziomo, żeby pokazać jednostajność
    tremolo (cała trudność tej techniki polega właśnie na
    stworzeniu wrażenia ciągłego dźwięku). Grający powinien
    widzieć kierunek podążania całej frazy, a nie wizualnie
    "„wspinać się”" na każdą grupę z osobna.
  }
  \vspace #0.5
  \justify {
    Oprócz tego grubsze linie dodane w wersji \bold B
    nie zlewają się "z pięciolinią," ułatwiając czytanie.
  }
}
