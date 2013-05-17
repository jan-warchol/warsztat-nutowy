\version "2.17.2"

cii = \markup {
  \combine
  \override #'(thickness . 1.5)
  \translate #'(0.8 . -0.3)
  \draw-line #'(0 . 2.2)
  C2
}

ciii = \markup {
  \combine
  \override #'(thickness . 1.5)
  \translate #'(0.8 . -0.3)
  \draw-line #'(0 . 2.2)
  C3
}

\relative f {
  \clef "G_8"
  \key d \major
  \time 2/4
  <d a' d fis>8 <a a' cis e> <b fis' b d> <fis-3 fis'-4 a-1 cis-1>^\cii
  <g g' b d>16 a16 <b fis' d'>8 <a e'-1 a-1 d-4>8 cis'-2
  <d,, d' a'-1 d-3>8 fis'16 g-0 a32-1 g-0 a g fis16 e
  d4\fermata \bar "||" <d a' d fis>
  <e gis b e>8 <fis a d> <e a b> gis?
  <a, a' cis e>4 <a' cis e>8 q16 q
  <fis d'>16 gis <a cis e>8 <e a b e> <e, gis'-1>
  <a a' cis e>4 q8 q16 q
  <d a' d fis>8 <a a' cis e> <d a' d fis>16 cis b a
  <g-3 b'-2 d-1 g-1>16^\ciii a b-1 c-2 <d-4 a'-1 d-2 fis-1>4^"C2"
}

\layout {
  indent = 0

  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
