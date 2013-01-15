% \tag #'aCappella { 
\relative f' {
  \clef G
  
  \key g \minor
  
  \time 4/4
  
  % wpisz nuty:
  \tag #'aCappella { R1*4 }
  r2  g2~ ^\markup \bold "Solo" \melisma
  g4.\melismaEnd es'8 d4 g,8 g 
  c\melisma b\melismaEnd c4 r c
  c8 d b4 c r8 g
  es4 es es\melisma d\melismaEnd
  es r8 g as g r g
  as g as4 g r
  g4. g8 bes2~\melisma
  bes4\melismaEnd c8 g as4. g16\melisma f\melismaEnd
  g'4. g8 g\melisma f16 e f4~
  f8 e16 d e d c bes as4. g16 f
  g8\melismaEnd g r g c4. e16\melisma d\melismaEnd
  cis4 cis r r8 d
  fis,4. fis8 g4 a8 g
  fis fis r4 r a~\melisma
  
  % 20. takt
  a8\melismaEnd a g2 fis8 fis
  bes2 a4 d
  d c c4.\melisma bes8
  a2\melismaEnd b4 r
  r8 g c2 b4
  es2 d4 r
  r8 c d4~\melisma d8\melismaEnd c16 b c4~\melisma
  c8\melismaEnd d16\melisma es\melismaEnd d8\melisma c b4\melismaEnd c
  c\melisma b\melismaEnd c r8 g
  as4. g16 f g4. f16\melisma es\melismaEnd
  f4 es d2
  c r
  \tag #'aCappella { R1*5 }
  \bar "|."
}
