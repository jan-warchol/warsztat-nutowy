% \tag #'aCappella { 
\relative f' {
  \clef G
  
  \key g \minor
  
  \time 4/4
  
  % wpisz nuty:
  \tag #'aCappella { R1*4 }
  \tag #'solo { R1*2 }
  r4 c'2^\markup \bold "Solo" ~\melisma c8\melismaEnd as'
  g4 d8 d es4 d8 g16\melisma es\melismaEnd
  c4 bes as2
  g4 r8 es' c bes r es
  c bes c4 bes r
  r2 r4 e~\melisma
  e\melismaEnd e e8\melisma d16 c f4~
  f8 e16 d e8 d16 c as'4. g16 f
  g2~ g8 f16 e f4~
  f8 e16 d\melismaEnd e4 r r8 e
  g4. a16\melisma e\melismaEnd f4 f
  es4. es8 d4 c8 bes
  a a r4 r2
 
 % 20. takt
  bes4. bes8 a4 a8 a
  a4 g g fis8 d'
  es4. es8 d4\melisma g~
  g fis\melismaEnd g8 f es d
  es2 d
  r r4 r8 g as4. g16 f g4. f16\melisma es\melismaEnd
  f2~\melisma f8 g\melismaEnd es4
  d2 c8 d es4~
  es8 d16 c d4~ d8 c16\melisma bes\melismaEnd c4~\melisma
  c8 b\melismaEnd c\melisma d\melismaEnd b2
  c r
  \tag #'aCappella { R1*5 }
  \bar "|."
}

