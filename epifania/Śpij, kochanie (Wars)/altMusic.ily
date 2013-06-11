\relative c' {
  \key g \major
  \time 2/4
  \tempo Moderato
  \dynamicUp
  \autoBeamOff
  %str1
  \partial 4 b'8 \mp [ ( \melisma g ]
  fis [ a b g ]
  e [ g b g] d[ a' b g ] ) \melismaEnd
  d4 ( \melisma c
  b2 ) \melismaEnd
  d4 ( \melisma c
  b2 ) \melismaEnd
  c4 ( \melisma e8 [ g ]
  g4 d
  cis e ) \melismaEnd
  es ( \melisma d8 ) \melismaEnd r
  r d4 \mf f8
  fis d r fis
  %str2
  r d4 f8
  fis d r4
  g g
  g g
  g8 [ ( \melisma d ] e4
  fis ) \melismaEnd r
  r8 d4 f8
  fis d r fis
  r d4 f8
  fis d r4
  g g
  g g
  g ( \melisma fis d cis ) \melismaEnd
  \repeat volta 2 {
    d ( \melisma cis ) \melismaEnd
    %str3
    d ( \melisma cis ) \melismaEnd
    d ( \melisma fis
    fis cis ) \melismaEnd
    fis \mp ( \melisma g ) \melismaEnd
    fis ( \melisma g ) \melismaEnd
    g8 g g g
    a a g r
    r d4 \mf f8
    fis d r fis
    r d4 f8
    fis d r4
    g g
    g g
  }
  \alternative {
    {
      d8 [ ( \melisma b ] c4
      b ) \melismaEnd r
    }
    {
      d8 [ ( \melisma b ] c4
      b ) \melismaEnd r
    }
  }
  \bar "|."
}