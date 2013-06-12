\version "2.17.2"
#(set-global-staff-size 22)

\header	{
  title = \markup \smaller {
    Porównanie składu nut
  }
  subtitle = \markup {
    \normal-text { utwór: \italic { Vilanella } (fragment) }
  }
  tagline = \markup \smaller \normal-text {
    autor analizy: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\markup \vspace #2
\markup \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 1.8)
    "wersja A"
  }
}
\markup \vspace #0.5

\markup \translate #'(0 . 0)
\epsfile #X #93 #"vilanella.eps"

\markup \vspace #2.5
\markup \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 1.8)
    "wersja B"
  }
}
\markup \vspace #1

\paper {
  top-margin = 12 \mm
  left-margin = 15 \mm
  right-margin = 15 \mm
  system-system-spacing #'basic-distance = 15
}

cii = \markup {
  \scale #'(0.9 . 1)
  \combine
  \override #'(thickness . 1.5)
  \translate #'(0.85 . -0.3)
  \draw-line #'(0 . 2.2)
  C2
}

cII = \markup {
  \scale #'(0.9 . 1)
  C2
}

ciii = \markup {
  \scale #'(0.9 . 1)
  \combine
  \override #'(thickness . 1.5)
  \translate #'(0.85 . -0.3)
  \draw-line #'(0 . 2.2)
  C3
}

\relative f {
  \clef "G_8"
  \key d \major
  \time 2/4
  \set fingeringOrientations = #'(left)
  \once \override Beam #'positions = #'(4.8 . 4.3)
  <d a' d fis>8 <a a' cis e>
  \once \override Beam #'positions = #'(3.8 . 3.3)
  <b fis' b d>
  \once \override TextScript #'extra-offset = #'(0 . 0.2)
  % FIXME: why i can't just tweak X-offset??
  <fis-3 fis'-\tweak #'extra-offset #'(0 . 0.15) -4 a-1 cis-\tweak #'extra-offset #'(0 . -0.2) -1>^\cii
  <g g' b d>16 a16 <b fis' d'>8 <a e'-1 a-1 d-\tweak #'extra-offset #'(0 . 0.45) -4>8 <cis'-2>
  <d,, d' a'-1 d-\tweak #'extra-offset #'(0 . 0.5) -3>8 fis'16
  \set fingeringOrientations = #'(down)
  <g-0>
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \once \override Beam #'positions = #'(2.83 . 2.6)
  <a-\tweak #'extra-offset #'(0 . 0.3) -1>32 <g-0> a g fis16 e
  \unset subdivideBeams
  \unset baseMoment
  \set fingeringOrientations = #'(left)
  \once \override Script #'staff-padding = #0.6
  d4\fermata \bar "||" <d a' d fis>
  \once \override Beam #'positions = #'(4 . 3.6)
  <e gis b e>8 <fis a d>
  \once \override Beam #'positions = #'(3 . 2.4)
  <e a b> gis?
  <a, a' cis e>4 <a' cis e>8 q16 q
  <fis d'>16 gis <a cis e>8 <e a b e> <e, gis'-\tweak #'extra-offset #'(0 . 0.2) -1>
  <a a' cis e>4 q8 q16 q
  <d a' d fis>8 <a a' cis e>
  \once \override Beam #'positions = #'(4.8 . 3)
  <d a' d fis>16 cis b a
  \once \override TextScript #'extra-offset = #'(0 . 0.4)
  \once \override Beam #'positions = #'(5.3 . 3.5)
  <g-3 b'-2 d-\tweak #'extra-offset #'(0 . 0.1) -1 g-1>16^\ciii
  \set fingeringOrientations = #'(down)
  a <b-1> <c-2>
  \set fingeringOrientations = #'(left)
  \once \override TextScript #'extra-offset = #'(0 . 0.3)
  <d-4 a'-1 d-2 fis-1>4^\cII
}

\layout {
  indent = 0
  \override Score.SpacingSpanner #'common-shortest-duration
  = #(ly:make-moment 1 12)

  \override Fingering #'font-size = #-6.5
  % i don't see why this shouldn't be default...
  \override Fingering #'staff-padding = #'()

  \override Staff.OctavateEight #'font-shape = #'roman
  \override Staff.OctavateEight #'font-size = #-3.3
  \override Staff.OctavateEight #'X-offset = #0.7

  \override Staff.BarLine #'hair-thickness = #2.1
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

\markup \smaller \column {
  \justify {
    Nuty u góry (wersja \concat { \bold A ) } pochodzą "z drugiej"
    części \italic { Repertuaru początkującego gitarzysty }
    wydawnictwa Absonic; wersja \bold B to ten sam fragment
    utworu złożony przeze mnie w programie LilyPond.
  }
  \vspace #0.5
  \justify {
    Nie ma tutaj poważnych błędów składu, ale moim zdaniem
    wersja \bold A ma pewną drobną niedoskonałość:
    pięciolinia, pałeczki, kreski taktowe i linie dodane są
    praktycznie tej samej grubości, przez co cały obraz trochę się
    zlewa. Tymczasem pięciolinia powinna być jakby tłem dla nut;
    z kolei kreski taktowe mają być grube,
    aby podział na takty był dobrze widoczny.
  }
  \vspace #0.5
  \justify {
    Oprócz tego w wersji \bold B są nieco krótsze pałeczki,
    dzięki czemu nuty są wizualnie zwięzłe (a więc łatwiej
    objąć wzrokiem melodię).
  }
}