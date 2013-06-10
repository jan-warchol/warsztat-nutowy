\relative c' {
  \clef "treble_8"
  \key g \major
  \time 2/4
  \tempo Moderato
  \dynamicUp
  \autoBeamOff
  %str1
  \partial 4 r
  d2 \mp ( \melisma
  c4 d
  c b ) \melismaEnd
  g8 [ ( \melisma b a fis ]
  g [ d ] g4 ) \melismaEnd
  g8 [ ( \melisma b a fis ]
  g [ d ] g4 ) \melismaEnd
  g8 [ ( \melisma e g c ]
  d4 b
  g8 [ a cis a ] ) \melismaEnd
  g4 ( \melisma fis8 ) \melismaEnd r
  r  b4 \mf d8
  d c r c
  %str2
  r b4 d8
  d c r4
  d d c c
  b ( \melisma cis
  d ) \melismaEnd r
  r8 b4 d8
  d c r c
  r b4 d8
  d c r4
  d d
  c c
  d8 [ ( \melisma b ] c4
  b ais ) \melismaEnd
  \repeat volta 2 {
    b2
    %str3
    b
    b ( \melisma
    ais ) \melismaEnd
    a4 \mp ( \melisma cis ) \melismaEnd
    d ( \melisma e ) \melismaEnd
    e8 e e e
    e e es r
    r  b4 \mf d8
    d c r c
    r b4 d8
    d c r4
    d d c c
  }
  \alternative {
    {
      g ( \melisma fis
      g r ) \melismaEnd
    }
    {
      g ( \melisma fis
      d r ) \melismaEnd
    }
  }
  \bar "|."
}