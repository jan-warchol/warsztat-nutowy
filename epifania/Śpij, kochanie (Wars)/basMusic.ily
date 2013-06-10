\relative c' {
  \clef bass
  \key g \major
  \time 2/4
  \tempo Moderato
  \dynamicUp
  \autoBeamOff
  %str1
  \partial 4 g
  d g
  c, g'
  d g
  g d
  g, d'
  g d
  g, g'
  c, c
  b <e e,>
  a, a
  c ( \melisma d8 ) \melismaEnd r
  <g g,>4 \mf \breathe <gis gis,> \breathe
  <a a,>8 d,16 e d e d8
  %str2
  <g g,>4 <gis gis,>
  <a a,>8 d,16 e d e d8
  <g g,>4 <f f,>
  <e e,> <es es,>
  <d d,> ( \melisma a
  d8 ) \melismaEnd d16 e d e d8
  <g g,>4 <gis gis,>
  <a a,>8 d,16 e d e d8
  <g g,>4 <gis gis,>
  <a a,>8 d,16 e d e d8
  <g g,>4 <f f,>
  <e e,> <es es,>
  <d d,>2
  g,8 d' fis16 e d cis
  \repeat volta 2 {
    b4 \p ( \melisma e ) \melismaEnd
    %str3
    b4 ( \melisma e ) \melismaEnd
    b ( \melisma d
    fis ) \melismaEnd fis8 [ ( \melisma e ]
    d4 a
    d a' ) \melismaEnd
    c8 c a a
    c4. r8
    <g g,>4 <gis gis,>
    <a a,>8 d,16 e d e d8
    <g g,>4 <gis gis,>
    <a a,>8 d,16 e d e d8
    <g g,>4 <fis fis,>
    <e e,> <es es,>
  }
  \alternative {
    {
      <d d,>2 ( \melisma
      g,4 ) \melismaEnd r
    }
    {
      <d' d,>2 ( \melisma
      g,4 ) \melismaEnd r
    }
  }
  \bar "|."
}