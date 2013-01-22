\relative c' {
  \key c \minor
  \time 4/4
  \tempo "Andante con moto" 4=69
  R1*7 | % 8
  r4 c8. \p c16 c4 c4 | % 9
  r4 c8. c16 c4 c4 |
  r4 c8. \< c16 c2 \! | % 11
  d4 \mf r4 r2 | % 12
  r4 d8. \p d16 d4 d4 | % 13
  r4 d8. \cresc d16 d4 d4 | % 14
  r4 f8. \f \< f16 f4 f4 \! | % 15
  \shape Slur #'((0 . -0.5)(0 . -0.75)(0 . -0.75)(0 . -0.5))
  << f2. ( { s2 s4\dim } >> es8 ) des8 | % 16
  c4 c2. \> ~ ^> | % 17
  c2. \! \p b4 | % 18
  c4 r4 r2 | % 19
  R1*3 | % 22
  r2 r4 es,8. \p f16 | % 23
  g8. ( [ bes16 ) ] bes4 r4 es,8. f16 | % 24
  g8. ( [ bes16 ) ] bes4 r2 | % 25
  R1*2 | % 27
  r4 c8. \pp g16 c4 c4 | % 28
  r4 c8. \p g16 c4 c4 | % 29
  r4 bes2 \< bes4 \! |
  << es4 { s8 s\>} >> es,4 \! r2 | % 31
  r2 es'2 -\tweak #'X-offset #-4 \mf -^ | % 32
  r2 es2 \cresc -^ | % 33
  r2 g2 -\tweak #'X-offset #-4 \ff ~ -^ | % 34
  g2. r8 g,8 \p | % 35
  g4. g8 g4. g8 | % 36
  g4 r4 r2 | % 37
  c2. \pp c4 | % 38
  c4 ( es4 d4 ) c8 ( [ b8 ) ] | % 39
  g2 b2 \< |
  c4 \! es4 g8 \> ( [ f8 ) ] es8 ( [ d8 ) ] | % 41
  c2 \! \p c2 | % 42
  c2 ( es4 ) d8 ( [ c8 ) ] | % 43
  << c4. ( { s4 s8\cresc } >> d8 ) c4 r4 | % 44
  c4 ( f4 es4 ) d4 | % 45
  c2. \f ( as'4 | % 46
  g4 ) f4 \dim es4 d8 ( [ c8 ) ] | % 47
  c8 \p ( [ b8 ) ] c8 ( [ as8 ) ] g4. f8 | % 48
  es4 r4 g4 ( b4 ) | % 49
  c4 r4 g4. \dim ( f8 ) |
  es4 r4 b'4. \pp b8 | % 51
  g4 -\markup{ \italic {rit.} } r4 b4. b8 | % 52
  g4 -\markup{ \italic {in tempo} } r4 r2 | % 53
  R1*3 | % 56
  R1 | % 57
  c4. \p \< c8 c4 c4 \! | % 58
  f2. ~ f8 f8 | % 59
  f2 \< r2 \! |
  g2 -\tweak #'X-offset #-2 \f -^ r2 | % 61
  g2 -^ r2 | % 62
  g2. ~ g8 g,8 \dim | % 63
  g4 g4 g4. g8 | % 64
  g2 \pp r2 | % 65
  R1*2 | % 67
  r4 c8. \pp c16 c4 c4 | % 68
  r4 c8. c16 c4 c4 | % 69
  r4 c8. \< c16 c2 \> |
  d4 \! r4 r2 | % 71
  r4 d8. \p d16 d4 d4 | % 72
  b4 \rest d8. \cresc d16 d4 d4 | % 73
  r4 f8. \< f16 f4 f4 \! | % 74
  f2. \f ( es8 \dim ) des8 | % 75
  c4 c2. ~ -^ \> | % 76
  c2. \p b4 | % 77
  c4 r4 r2 | % 78
  R1*3 | % 81
  r2 r4 es,8. \p f16 | % 82
  g8. ( [ bes16 ) ] bes4 r4 es,8. f16 | % 83
  g8. ( [ bes16 ) ] bes4 r2 | % 84
  R1*2 | % 86
  r4 bes8. \pp f16 bes4 bes4 | % 87
  r4 <<
    {
      \voiceOne
      d8. c16 d4 d4
    }
    \new Voice {
      \voiceTwo
      bes8. f16 bes4 bes4
    }
  >> \oneVoice | % 88
  g'2 \f r2 | % 89
  g2 r2 |
  g2. g4 | % 91
  g4 \> g4 g4. g,8 \! | % 92
  g4 \p r4 r2 | % 93
  c2. \p c4 | % 94
  c4 ( es4 d4 ) c8 ( [ b8 ) ] | % 95
  g2 b2 \cresc | % 96
  c4 es4 g8 \> ( [ f8 ) ] es8 ( [ d8 ) ] | % 97
  c2 \! \p c2 | % 98
  c2 ( es4 ) d8 ( [ c8 ) ] | % 99
  << c4. ( { s4 s8\cresc } >> d8 ) c4. r8 |
  c4 ( f4 es4 ) d4 | % 101
  c2. \f ( as'4 | % 102
  g4 \> ) f4 es4. c8 \! | % 103
  c8 \p ( [ b8 ) ] c8 ( [ as8 ) ] g4. f8 | % 104
  es4 -\markup{ \italic {dim. sempre} } r4 g4 ( b4 ) | % 105
  c4 r4 g4. ( f8 ) | % 106
  es4 r4 b'4.\pp b8 | % 107
  g4 r4 <<
    {
      \voiceOne g4 -\tweak #'X-offset #-3 \pp ( b8 ) b8 | % 108
      c4
    }
    \new Voice {
      \voiceTwo g4. f8 |
      es4
    }
  >> \oneVoice r4 b'4. b8 | % 109
  g4 ^\markup{ \italic {ritard.} } r4 b4. b8 |
  g2 r2
  R1\fermataMarkup
  \bar "|."
}