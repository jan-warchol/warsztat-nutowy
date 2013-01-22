\relative c {
  \key c \minor
  \time 4/4
  \tempo "Andante con moto" 4=69
  R1*6 | % 7
  r2 r4 c8. \p d16 | % 8
  es8. ( [ g16 ) ] g4 r4 c,8. d16 | % 9
  es8. ( [ g16 ) ] g4 r4 c,8. d16 |
  es8. ( [ bes'16 \< ) ] << bes4. ( { s4 s8\! } >> as16 [ g16 \> ) ] f8 es8 \! | % 11
  d4 d4 r4 d8. \p es16 | % 12
  f8. ( [ as16 ) ] as4 r4 d,8. es16 | % 13
  f8. ( [ as16 ) ] as4 r4 d,8. \cresc es16
  | % 14
  f8. \f ( [ c'16 ) ] c4 ( ~ c8 -\tweak #'X-offset #-1.9 \< [ b8 ) ] f'8. \! d16 | % 15
  c4 b4 ( g4 \dim ) es4 | % 16
  f2 d2 | % 17
  g2 \p ~ g4. g8 | % 18
  c,4 r4 r2 | % 19
  R1*5 | % 24
  R1*6 |
  r2 r4 es8. \p \< f16 | % 31
  \break
  g8. ( [ bes16 ) ] bes4 r4 es,8. f16 | % 32
  g8. ( [ bes16 ) ] bes4 r4 es,8. f16 | % 33
  d8. ( [ b'16 ) ] b4 \! r4 d,8. \ff es16 | % 34
  f8. ( [ b16 ) ] b4 r4 r8 g8 \p | % 35
  g4. g8 g4. g8 | % 36
  g4 r4 r2 | % 37
  c,2 \pp d2 | % 38
  es4. ( g8 ) g2 | % 39
  c,2 d2 \< |
  es4. \! \> ( g8 ) g2 \! | % 41
  as2 \p g2 | % 42
  as2 g2 | % 43
  f4 ( d4 \cresc g4 ) f4 | % 44
  es4 d4 g4 f4 | % 45
  e2 \f f2 | % 46
  << f2 ( { s4 s\dim } >> g4 ) as8 ( [ d,8 ) ] | % 47
  g4. \p g8 g,4. g8 | % 48
  c4 r4 g4 g4 | % 49
  c8 ( [ d8 ) ] es8 ( [ g8 ) ] g,4. \dim g8
  c4 r4 g4. \pp g8 | % 51
  c4 -\markup{ \italic {rit.} } r4 g4. g8 | % 52
  c4 -\markup{ \italic {in tempo} } r4 r2 | % 53
  R1*3 | % 56
  \break
  c4. \p c8 \< c4 c4 | % 57
  c4. c8 c2 \! | % 58
  R1*2 |
  g'2 -\tweak #'X-offset #-2 \f -^ r2 | % 61
  g2 -^ r2 | % 62
  g2. ~ g8 g8 \dim | % 63
  g4 g4 g4. g8 | % 64
  g2 \pp r2 | % 65
  R1 | % 66
  r2 r4 c,8. -\tweak #'X-offset #-2.4 \pp d16 | % 67
  es8. ( [ g16 ) ] g4 r4 c,8. d16 | % 68
  es8. ( [ g16 ) ] g4 r4 c,8. d16 | % 69
  es8. \< ( [ as16 ) ] as4. g8 \! \> ( [ f8 ) ] es8 \! |
  d4 d4 r4 d8. \p es16 | % 71
  f8. ( [ as16 ) ] as4 r4 d,8. es16 | % 72
  f8. ( [ as16 ) ] as4 \cresc r4 d,8. es16
  | % 73
  f8. ( [ c'16 ) ] c4 ( ~ c8 [ b8 ) ] f'8. d16 | % 74
  c4 -\tweak #'X-offset #-1.7 \f b4 ( g4 ) es4 \dim | % 75
  f2 d2 | % 76
  g2 \p ~ g4. g8 | % 77
  c,4 r4 r2 | % 78
  R1*8 | % 86
  R1*2 | % 88
  g'2 \f r2 | % 89
  g2 r2 |
  g2. g4 | % 91
  g4 \> g4 g4. g8 \! | % 92
  g4 \p r4 r2 | % 93
  c,2 \p d2 | % 94
  es4. ( g8 ) g2 | % 95
  c,2 \< d2 \! | % 96
  es4. \> ( g8 ) g2 \! | % 97
  as2 \p g2 | % 98
  as2 g2 | % 99
  f4 ( d4 \cresc g4 ) f4 |
  es4 d4 g4 f4 | % 101
  e2 \f f2 | % 102
  f2 \> ( g4 ) as8 \! ( [ d,8 ) ] | % 103
  g4. \p g8 g,4. g8 | % 104
  c4 -\markup{ \italic {dim. sempre} } r4 g4. g8 | % 105
  c8 ( [ d8 ) ] es8 ( [ g8 ) ] g,4. g8 | % 106
  c4 r4 g4.\pp g8 | % 107
  c4 r4 <g es'>4. -\tweak #'X-offset #-3 \pp <g d'>8 | % 108
  c4 r4 g4. g8 | % 109
  c4 -\markup{ \italic {ritard.} } r4 g'4. g8 |
  c,2 r2
  R1\fermataMarkup
  \bar "|."
}