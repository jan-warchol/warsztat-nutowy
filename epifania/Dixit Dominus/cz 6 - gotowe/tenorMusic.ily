% \tag #'aCappella { 
\relative c' {
  \key d\minor
  \clef  "G_8"
  \time 3/4
  \tempo Allegro
  % str. 33
  \tag #'aCappella { R2. * 15 }
  R2. 
  \tag #'solo { R2. * 21 }
  % str. 34
  r4 c2~ ^\markup \bold "solo" \melisma
  % str. 35
  c4. \melismaEnd b8 b4
  r e2~ \melisma
  e4. \melismaEnd d8 d4
  r g2~ \melisma
  g4 \melismaEnd f8 \melisma e \melismaEnd d\melisma c \melismaEnd
  b2 \melisma c4~
  c2 b4 \melismaEnd
  c2.
  r4 r e
  e8 \melisma d c b c a
  f' e d c b a
  gis4 \melismaEnd gis8 gis gis gis
  gis4. gis8 e'4
  d8 \melisma c \melismaEnd b2
  a2.
  R2. 
  \tag #'solo { R2.* 28 }
  % str. 36
  f'2.~ ^"tutti" \melisma
  f4. \melismaEnd e8 e4
  a a a
  bes, bes r
  g' g g
  f f r
  R2.
  r4 r g
  a8 \melisma g f e d c
  bes4 g' d
  e d8 c bes4
  % str. 37
  f'8 d g2 \melismaEnd
  f4 r r
  R2.* 2
  b,2.
  b2 a4
  f' e2
  e e4
  R2. *2
  r4 g2
  g4 fis2
  bes,2.
  a2.
  a4 g2
  R2. *2
  % str. 38
  r4 f'2
  f4 e2 a2.
  g
  g4 f2
  d4 c2
  c4 \melisma f2 \melismaEnd
  f \melisma g4 \melismaEnd
  g2.
  g
  cis,
  f
  bes,~ \melisma
  bes4 e e, \melismaEnd
  a2 e'4
  % str. 39
  d d r
  r r d
  e e r
  r r c
  d4. e8 d bes
  e2 \melisma d4
  a8 bes \melismaEnd a4 e'
  f r r
  \tag #'aCappella { R2. * 15 }
  \bar "|."
}
