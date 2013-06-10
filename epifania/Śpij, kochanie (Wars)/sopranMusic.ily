\relative c'' {
  \clef treble
  \key g \major
  \time 2/4
  \tempo Moderato
  \dynamicUp
  \autoBeamOff
  %str1
  \partial 4 r4
  R2*3
  b8 \mf g d a'
  g4 r
  b8 g d a'
  g4 r
  e8 g c e
  d b g8. a16
  b8 g fis g
  a4 r8 d,
  d'4. \f b8
  a d, r b'16 c
  %str2
  d e d e d8 b
  a d, r g16 a
  b b b b b8 g16 a
  b16 b b b b8 g16 a
  b8 g fis g
  a4 r8 d,
  d'4. b8
  a d, r b'16 c
  d e d e d8 b
  a d, r g16 a
  b b b b b8 g16 a
  b b b b b8 g16 a
  b8 g d a'
  g4 r
  \repeat volta 2 {
    fis8 \mp [ ( \melisma b ] g4 ) \melismaEnd
    %str3
    fis8 [ ( \melisma b ] g4 ) \melismaEnd
    fis8 b d b
    c a fis4
    a8 \mf [ ( \melisma d ] b4 ) \melismaEnd
    a8 d b4
    a16 \< b a b c d c d \!
    e8 \> c a \! d,
    d'4. \f b8
    a d, r b'16 c
    d e d e d8 b
    a d, r g16 a
    b b b b b8 g16 a
    b b b b b8 \dim g16 \! a
  }
  \alternative {
    {
      b8 g d a'
      g4 r
    }
    {
      b8 g d a'
      g4 r
    }
  }
  \bar "|."
}