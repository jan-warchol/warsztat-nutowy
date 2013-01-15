
\tag #'aCappella { R1*12 }
b2 b4 a4 | % 2
a8. g16 g4 r2 | % 3
b2 b4 a4 | % 4
a8. g16 g4 r2 | % 5
e'2 e4 d4 | % 6
c4. c8 c4 b4 | % 7
a4. a8 a4 g4 | % 8
d'1 
b2 b4 a4 | % 2
a8. g16 g4 r2 | % 3
d'2 d4 cis
cis8. b16 b4 r2
b2 a4 r
d2 a4 r 
e'4 g,8 a b4. g8
fis2 r
b2 fis4 r
c'4. ( a8 ) g4 r
cis4 d8 e b4. cis8
d2 d,2\rest
\tag #'aCappella { R1*4 }
\break
b'2 b4 a4 | % 2
a8. g16 g4 r2 | % 3
b2 b4 a4 | % 4
a8. g16 g4 r2 | % 5
e'2 e4 d4 | % 6
c4. c8 c4 b4 | % 7
a4. a8 a4 g4 | % 8
d'2 r2 | % 9
d2 c4 b4 | \barNumberCheck #10
b8. a16 a4 r2 | % 11
d2 e4 c4 | % 12
b8. a16 a4 r2 | % 13    
  \once \override Tie #'control-points = #'((1.6 . 1.6) (3.6 . 2.7) (12 . 2.7) (14 . 1.6))
  \shapeSlur #'(0.15 -0.4   1.5 0.8   0.4 0.5   0 0)
d2 ( ~ d8 [ b8 ) ] a8 ( [ g8 ) ] | % 14
c4. a8 b4 b4 ~ | % 15
b4 a8 g8 a4. b8 | % 16
g2 r2 | % 17
  \once \override Tie #'control-points = #'((1.7 . 2.2) (2.3 . 2.8) (6.0 . 2.8) (6.6 . 2.2))
  \shapeSlur #'(0.1 -0.2   0.4 0.3   0.3 0.3   0 0)
e'2 ( ~ e8 [ c8 ) ] b8 ( [ a8 ) ] | % 18
d4. b8 c4 c4 ~ | % 19
c4 a8 ( [ c8 ) ] b4 a8 g8 | \barNumberCheck #20
a2 ~ a4. g8 | % 21
g2 r2 \bar "|."