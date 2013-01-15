
\tag #'aCappella { R1*12 }
\tag #'solo { R1*20 }
\tag #'aCappella { R1*4 }
R1 | % 2
b2 b4 a4 | % 3
a8. g16 g4 r2 | % 4
b2 b4 a4 | % 5
a8. g16 g4 r2 | % 6
e'2 e4 d4 | % 7
c4. c8 c4 b4 | % 8
a4. a8 a4 g4 | % 9
d'2 r2 | \barNumberCheck #10
d2 c4 b4 | % 11
b8. a16 a4 r2 | % 12
d2 e4 c4 | % 13
b8. a16 a4 r2 | % 14
  \shapeSlur #'(0.5 -0.5   1 0   0 0   0 0)
d2 ( ~ d8 [ b8 ) ] a8 ( [ g8 ) ] | % 15
e4 e8 e8 fis4. fis8 | % 16
g2 r2 | % 17
R1 | % 18
  \once \override Tie #'control-points = #'((1.6 . 2.15) (2.4 . 2.9) (8.0 . 2.9) (8.8 . 2.15))
  \shapeSlur #'(0 -0.3   1 0.6   0.5 0.4   0 0)
e'2 ( ~ e8 [ c8 ) ] b8 ( [ a8 ) ] | % 19
fis2 g4 e4 | \barNumberCheck #20
fis2 ~ fis4. g8 | % 21
g2 r2 \bar "|."