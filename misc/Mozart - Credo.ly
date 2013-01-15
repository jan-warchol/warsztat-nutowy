\version "2.17.3"

\header {
  title = "Credo"
  subtitle = "Msza C-dur “Koronacyjna”"
  composer = "Wolfgang A. Mozart, 1779 r."
}

#(set-global-staff-size 16)

\paper {
  indent = 0
}

soprano =  \relative c'' {
  \compressFullBarRests
  \clef "treble"
  \key c \major
  \time 4/4
  \tempo "Allegro molto"
  R1*4
  \mark \markup { \box { A } }
  c4 ^"(Tutti)" \f c8. c16 c4 c
  c4 c8. c16 c4 c
  c4 c c c8 c
  c4 c c ( f )
  e8 \mark \markup { \box { A1 } } c e4. ( d8 [ c b ] |
  a4 ) e' d8 ( [ c ) ] b a
  g4 d' r \mark \markup { \box { A2 } } c8 c
  c4 c8 c c4 c8 c
  c4. c8 c4 c8 c
  b4 c b ( a8. ) a16
  g4 r r2
  R1*2
  \mark \markup { \box { B } }
  e'4 e e e
  e8. \f e16 d4\p d d
  d4 \f c \p c8. c16 c4
  c4 \f ( b2 \p ) a4
  gis4 \f \slurDashed a8 ( [ \slurSolid b ) ] c4. c8
  b4 r r8 \mark \markup { \box { B1 } } e4 e8
  c8 ( [ a ) ] e'4 r8 e e e
  c8 ( [ a ) ] e'2 d4 ~
  d8 g, c4. c8 b4
  a8. a16 b4 a ( gis8. ) gis16
  a4 r \mark \markup { \box { B2 } } c8 ( [ b ) ] a g
  fis4. ( g16 [ a ) ] b4 r
  r8 cis e cis a8. a16 a4
  g4 g c c8 d
  es8 ( [ f ) ] es ( [ d ) ] c2
  b4 r r2
  R1*2
  \mark \markup { \box { C } }
  c4 ~ c8. c16 c4 c
  c2 c4 c
  c4 c c4. c8
  c4. c8 c c f4
  e4 \mark \markup { \box { C1 } } e8 e d8. d16 d4
  c4. c8 bes4 bes8 bes
  a8. a16 a4 g8. g16 g4
  f8 ( [ g a b ] c [ d ) ] e ( [ fis ) ]
  g4 \mark \markup { \box { C2 } } r8 c, a ( [ g ) ] f e
  f8. g16 a4 r8 a c b
  c8. d16 e8 c f4 f
  f4 f f f8 f
  f2 f4. f8
  e4 d8 d c4 ( b )
  c4 r8 \mark \markup { \box { C3 } } e g ( [ f e d ) ]
  c4. \slurDashed e16 ( [ \slurSolid c ) ] f8 ( [ e d c ) ]
  b4. \slurDashed d16 ( [ \slurSolid b ) ] e2 ~
  e4 f8 ( [ e ) ] d2 ~
  d4 e8 ( [ d ) ] c2 ~
  c4 d8 ( [ e ) ] f4 f8 f
  e4 e8 e d2
  c4 r r2
  R1*2
  \mark \markup { \box { D } }
  \tempo Adagio
  r8 bes ^"Solo" bes bes bes8. bes16 as4
  r8 d d d16 d d4 c
  c8 bes bes bes es8. c16 as8 as
  as4 g c4. es8
  es,4. \grace { g16 ( } f8 ) es4 r
  \mark \markup { \box { D1 } }
  r8 bes'4 ^"Tutti" \f bes8 ces2
  bes8 bes16 bes bes8 bes bes2
  a8 c c16. c32 c16 es es2
  b4 r \mark \markup { \box { D2 } } c8 \p g r4
  d'8 g, r4 es' es
  es4 ^\markup{ \italic {cresc.} } es es \f ( d8. ) d16
  c8 r as \pp r g r g r
  \tempo "tempo primo"
  c,4 r r8 \mark \markup {
    \box { E }
  } c'8 \f c c
  c4 c c8. c16 c4
  c4 c8 c c4 c8 c
  c4 c8 c c4 ( f )
  e4 \mark \markup { \box { E1 } } c8 c e ( [ d c b ]
  a4 ) c8 e d ( [ c b a ]
  g4 ) b8 ( [ d ) ] c4 c
  \mark \markup { \box { E2 } }
  c4 c8 c c4 c8 c
  c2 c4. c8
  b4 c8 c b4 ( a )
  g4 r r r8 \mark \markup { \box { E3 } } g'
  g4. g8 g4 g
  f8 ( [ e ) ] d ( [ c ) ] b ( [ a ) ] g ( [ f ) ]
  e4. e8 e4 \mark \markup { \box { E4 } } e'
  e8. \f e16 d4 \p d d
  d4 \f c \p c c
  \slurDashed c4 \f ( \slurSolid b2 \p ) a4
  gis4 \f a8 b c4. c8
  b4 r \mark \markup { \box { E5 } } e4. e8
  c8 ( [ a ) ] e'4 r8 e e e
  c8 a e'4 r d
  g,4 r8 c c c b4
  a8 a b b a4 ( gis )
  a4 r r2
  \mark \markup { \box { F } }
  f'2 ^"Solo" c
  a8. bes16 c4 r c8 f
  f4 e8 d d4 ( c8 ) bes
  a8. bes16 c4 r2
  d4 c bes a
  a4 g r2
  R1*2
  r2 \mark \markup { \box { G } } g'4 g
  g8 \f ( [ cis, ) ] cis2 \p d8 ( [ e ) ]
  g8. f16 f4 f f
  f4 \f ( b,2 ) c8 \p ( [ d ) ]
  f4 e \mark \markup { \box { G1 } } g2
  f4 e d c
  c4 b \mark \markup { \box { G2 } } r2
  c4. \slurDashed d16 ( [ \slurSolid e ) ] f4 f
  e4. \slurDashed d16 ( [ \slurSolid c ) ] b4. \slurDashed a16 ( [
  \slurSolid g16 ) ]
  g'4 f8 f \slurDashed e4 ( \slurSolid d )
  c8 \mark \markup { \box { H } } c \f ^"Tutti" c c c2 ~
  c4 c8 c c2 ~
  c8. c16 c8 c c4 c
  c4. c8 c c f8. f16
  e8 \mark \markup { \box { H1 } } e e8. e16 d4 r8 d
  c8 c c4 bes bes8 bes
  a4. a8 g4. g8
  \slurDashed f8 ( [ \slurSolid g a b ] c [ d e ) ] fis
  g4 g, \mark \markup { \box { H2 } } g' g
  g4 \f f \p f8. f16 f8 f
  f4 \f es \p es8. es16 es8 es
  \slurDashed es4 \f ( \slurSolid d2 \p ) c4 ~
  c4 bes2 ^\markup{ \italic {decresc.} } as4 ~
  as4 g2 ( fis4 \pp )
  g4 \mark \markup { \box { H3 } } r r r8 g' \f
  g4 g, r8 f' f f
  e8. c16 g'2 f4 ~
  f4 e2 d4 ~
  d4 c2 \slurDashed b4 ( \slurSolid
  g'4 ) f e ( d )
  c4 r8 \mark \markup { \box { I } } e ( g [ f e d ) ]
  c4. \slurDashed e16 ( [ \slurSolid c ) ] f8 ( [ e d c ) ]
  b4. \slurDashed d16 ( [ \slurSolid b ) ] e2 ~
  e4 f8 ( [ e ) ] d2 ~
  d4 e8 ( [ d ) ] c2 ~
  \slurDashed c4 ( \slurSolid d8 [ e ) ] f4. f8  |
  e4 d c ( b )
  c4 r r2
  \mark \markup { \box { I1 } }
  f4 e d2
  c4 r r2
  f4 e d2
  c4 r r2
  R1
  \mark \markup { \box { J } }
  e2 ~ e8 ( [ f ) ] e f
  g4 f e ( d )
  c4 r r \mark \markup { \box { J1 } } d
  e4 r r d
  c4 r r2 \bar "|."
}

sopranoLyricsOne =  \lyricmode {
  Cre -- do in u -- num De --
  um, in u -- num De -- um. Pa -- trem o -- mni -- pot -- en -- tem,
  fa -- cto -- rem coe -- li et ter -- rae, vi -- si -- bi -- li -- um
  o -- mni -- um, o -- mni -- um, et in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num Je -- sum Chri -- stum, Fi -- li --
  um De -- i u -- ni -- ge -- ni -- tum. Et ex Pa -- tre, ex Pa -- tre
  na -- tum an -- te o -- mni -- a, o -- mni -- a sae -- cu -- la. De
  -- um de De -- o, lu -- men de lu -- mi -- ne, De -- um ve -- rum de
  De -- o ve -- ro. Ge -- ni -- tum, non fa -- ctum, non fa -- ctum,
  con -- sub -- stan -- ti -- a -- lem Pa -- tri: per quem o -- mni --
  a fa -- cta sunt, per quem o -- mni -- a, o -- mni -- a fa -- cta
  sunt. Qui pro -- pter nos ho -- mi -- nes, pro -- pter nos ho -- mi
  -- nes, et pro -- pter no -- stram, no -- stram sa -- lu -- tem de
  -- scen -- dit de coe -- lis, de -- scen -- dit,
  de -- scen -- dit de coe -- lis. Et in -- car -- na -- tus est de
  Spi -- ri -- tu San -- cto ex Ma -- ri -- a Vir -- gi -- ne: Et ho
  -- mo, ho -- mo fa -- ctus -- est. Cru -- ci -- fi -- xus e -- ti -- am pro
  no -- bis: sub Pon -- ti -- o Pi -- la -- to pas -- sus, pas -- sus,
  pas -- sus, et se -- pul -- tus est, se -- pul -- tus est. Et re --
  sur -- re -- xit ter -- ti -- a di -- e, se -- cun -- dum, se -- cun
  -- dum Scri -- ptu -- ras. Et a -- scen -- dit in coe -- lum: se --
  det, se -- det ad dex -- te -- ram Pa -- tris, ad dex -- te -- ram
  Pa -- tris. Et i -- te -- rum ven -- tu -- rus est cum glo -- ri --
  a, cum glo -- ri -- a, iu -- di -- ca -- re, iu -- di -- ca -- re vi
  -- vos et mor -- tu -- os: cu -- ius re -- gni non e -- rit fi --
  nis, non, non, non, non e -- rit fi -- nis, non e -- rit fi -- nis.
  Et in Spi -- ri -- tum, et in Spi -- ri -- tum San -- ctum, Do -- mi
  -- num, et vi -- vi -- fi -- can -- tem: Qui cum Pa -- tre et Fi --
  li -- o si -- mul ad -- o -- ra -- tur, et con -- glo -- ri -- fi --
  ca -- tur. Qui lo -- cu -- tus est, lo -- cu -- tus est per Pro --
  phe -- tas. Et u -- nam san -- ctam ca -- tho -- li -- cam et a --
  po -- sto -- li -- cam Ec -- cle -- si -- am. Con -- fi -- te -- or
  u -- num ba -- ptis -- ma in re -- mis -- si -- o -- nem pec -- ca
  -- to -- rum. Et ex -- spe -- cto re -- sur -- re -- cti -- o --
  nem, re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum. Et vi
  -- tam ven -- tu -- ri sae -- cu -- li. A -- men, a -- men, a --
  men, a -- men, a -- men, a
  -- men, a -- men, a -- men, a -- men, a -- men, a -- men, a
  -- men, a -- men. Cre -- do in u -- num De -- um. A -- men, a --
  men.
}

alto =  \relative c' {
  \compressFullBarRests
  \clef "treble"
  \key c \major
  \time 4/4
  \tempo "Allegro molto"
  R1*4
  c4 ^"(Tutti)" \f c8. c16 c4 c
  c4 c8. c16 c4 c
  c4 c e8 ( [ f ) ] g a
  bes4 a g8 ( [ e a g ) ]
  g4 r8 g c ( [ b ) ] a ( [ gis ) ]
  a2 b8 ( [ a ) ] g ( [ fis ) ]
  g4 d r2
  r4 c'8 b a ( [ c ) ] a g
  fis4. fis8 fis4 fis8 fis
  g4 a g ( fis8. ) fis16
  g4 r r2  R1*2
  gis4 gis gis gis
  a8. \f a16 a4\p a a
  g4 \f g \p g8. g16 g4
  f4 \f f \p e \f e \p
  d4 \f ( e2 ) fis4
  b,4 r r2
  r8 a' ( [ gis ) ] a e2 ~
  e4. e8 f2
  e2 d4. d8
  c8. c16 f4 e ~ e8. e16
  e4 r a8 ( [ g ) ] fis e
  dis4. ( e16 [ fis ) ] g8 a g f
  e4. f16 [ g ] a8 ( [ g ) ] f es
  d4 d8 d g ( [ as ) ] g f
  es8 ( [ d ) ] es ( [ g ) ] g4 ( fis )
  g4 r r2  R1*2
  c,4 ~ c8. c16 c4 c
  c2 c4 c
  c4 c e8 f g a
  bes4 a g8 ( [ e a g ) ]
  g4 g8 g a8. a16 e4
  e4. e8 f4 c8 c
  c8. c16 c4 d8. d16 a4
  a8 ( c4 f8 e g4 ) c8
  b4 r r8 e, d cis
  d4. a'8 g ( [ f ) ] e d
  g8. f16 e4 r2
  r8 a f e d4 d'8 c
  b2 b4. g8
  g4 a8 a g2
  g4 r r r8 g
  a8 ( [ g f e ) ] d4. \slurDashed f16 ( [ \slurSolid d ) ]
  g8 ( [ f e d ) ] c4 r
  r8 c a'2 b8 ( [ a ) ]
  g2. a8 ( [ g ) ]
  f4. c'8 b4 g
  g4 a8 a a4 ( g )
  g4 r r2 R1*2
  r8  g ^"Solo" g g g8. g16 f4
  r8 as as as16 as g4 g
  g8 g g g as8. es16 es8 es
  f4 es es4. c8
  bes4. bes8 bes4 r
  r8 g'4 ^"Tutti" \f g8 as2
  g8 g16 g g8 g f2
  es8 a a16. a32 a16 a g2
  f4 r g8 \p es r4
  g8 f r4 es g
  as8 ^\markup{ \italic {cresc.} } ( g4 ) fis8 g4 \f ( f8. ) f16
  es8 r d \pp r es r d r
  c4 r r8 c \f c c
  c4 c c8. c16 c4
  c4 c8 c e ( [ f ) ] g a
  bes4 a8 a g ( [ e a g ) ]
  g4 e8 c c' ( [ b a gis ) ]
  a4. a8 b ( [ a g fis ) ]
  g4 r r2
  r4 c8 b a ( [ c ) ] a g
  fis4. fis8 fis4 fis
  g4 a8 a g4 ( fis )
  g4 r r r8 g
  g4. g8 g4 g
  f8 ( [ e ) ] d ( [ c ) ] b ( [ a' ) ] g ( [ f ) ]
  e4. e8 e4 gis
  a8. \f a16 a4 \p a a
  g4 \f g \p g g
  f2 \fp e \fp
  d4 \f e8 e e4 ( fis8. ) fis16
  b,4 r r2
  r8 a' ( [ gis ) ] a e4 e8 e
  e4. e8 f f f4
  r8 e e e d2
  c8 c f f e2
  e4 r r2  R1*3
  r2 c4. ^"Solo" f8
  f2 ( e4 ) f
  f4 e r2 R1*2
  r2 e4 e
  e8 \f ( [ g ) ] g bes \p bes ( [ a ) ] a g
  e8. f16 f4 f c
  d8 \f ( f4 a \p g ) f8
  d4 e r e
  f4 g a a
  g4 g r2
  r2 g4 g
  g2 g
  g4 a8 a g2
  g4 r c,8 \f ^"Tutti" ( [ d ) ] e f
  g2 e8 ( [ f ) ] g ( [ a ) ]
  bes4. g8 e f g a
  bes8. bes16 a8 a g ( [ e a ) ] g
  g4 r8 g a8. a16 e4 ~
  e8 e e e f4 c
  c8. c16 c8 c d4 a
  a8 ( c4 f8 e g4 ) c8
  b4 g g g
  as4 \f as \p as8. as16 as8 as
  g4 \f g \p g8. g16 g8 g
  f2 \fp es \fp
  d2 \fp c ^\markup{ \italic {decresc.} } \fp
  \slurDashed bes2 \fp ( \slurSolid as \fp )
  g8 \pp g' \f g4 g8 f f f
  e8 ( [ c' b c ] g4. ) g16 g
  g4 g \slurDashed a2 ( \slurSolid
  g2 f
  e2 a4 ) g
  g4 a g2
  g4 r r r8 g
  a8 ( [ g f e ) ] d4. \slurDashed f16 ( [ \slurSolid d ) ]
  g8 ( [ f e d ) ] c4 r
  r8 \slurDashed c ( \slurSolid a'2 ) b8 ( [ a ) ]
  g2. a8 ( [ g ) ]
  f4. c'8 b4 g
  g4 a g2
  g4 r r2
  g4 g a ( g )
  g4 r r2
  g4 g a ( g )
  g4 r r2 R1
  g2 ~ g8 ( [ a ) ] bes a
  g4 a g2
  g4 r r g
  g4 r r g
  g4 r r2 \bar "|."
}

altoLyricsTwo =  \lyricmode {
  Cre -- do in u -- num De --
  um, in u -- num De -- um. Pa -- trem o -- mni -- pot -- en -- tem,
  fa -- cto -- rem coe -- li et ter -- rae, vi -- si -- bi -- li -- um
  o -- mni -- um, et in -- vi -- si -- bi -- li -- um. Et in u -- num
  Do -- mi -- num Je -- sum Chri -- stum, Fi -- li -- um De -- i u --
  ni -- ge -- ni -- tum. Et ex Pa -- tre na -- tum an -- te o -- mni
  -- a sae -- cu -- la. De -- um de De -- o, lu -- men de lu -- mi -- _
  ne, De -- um ve -- rum de De -- o, de De -- o ve -- ro. Ge -- ni --
  tum, non fa -- ctum, non fa -- ctum, con -- sub -- stan -- ti -- a
  -- lem Pa -- tri: per quem o -- mni -- a fa -- cta sunt, per quem o
  -- mni -- a, o -- mni -- a fa -- cta sunt. Qui pro -- pter
  nos, qui pro -- pter nos ho -- mi -- nes, et pro -- pter no -- stram
  sa -- lu -- tem de -- scen -- dit, de -- coe -- lis, de scen --
  dit, de -- scen -- dit, de -- scen -- dit de coe -- lis. Et in -- car -- na --
  tus est de Spi -- ri -- tu San -- cto ex Ma -- ri -- a Vir -- gi --
  ne: Et ho -- mo, ho -- mo fa -- ctus est. Cru -- ci -- fi -- xus e
  -- ti -- am pro no -- bis: sub Pon -- ti -- o Pi -- la -- to pas --
  sus, pas -- sus, pas -- sus, et se -- pul -- tus est, se -- pul --
  tus est. Et re -- sur -- re -- xit ter -- ti -- a di -- e, se -- cun
  -- dum, se -- cun -- dum Scri -- ptu -- ras. Et a -- scen -- dit in
  coe -- lum: se -- det, se -- det ad dex -- te -- ram, ad dex -- te
  -- ram Pa -- tris. Et i -- te -- rum ven -- tu -- rus est cum glo --
  ri -- a, cum glo -- ri -- a, iu -- di -- ca -- re, iu -- di -- ca --
  re vi -- vos et mor -- tu -- os: cu -- ius re -- gni non e -- rit fi
  -- nis, non, non e -- rit fi -- nis, non e -- rit fi -- nis. Et vi
  -- vi -- fi -- can -- tem: Qui cum Pa -- tre, cum Pa -- tre et Fi --
  li -- o si -- mul ad -- o -- ra -- tur, et con -- glo -- ri -- fi --
  ca -- tur. Qui lo -- cu -- tus est per Pro -- phe -- tas. Et u --
  nam san -- ctam ca -- tho -- li -- cam et a -- po -- sto -- li --
  cam Ec -- cle -- si -- am. Con -- fi -- te -- or u -- num ba -- ptis
  -- ma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum.
  Et ex -- spe -- cto re -- sur -- re -- cti -- o -- nem, re -- sur --
  re -- cti -- o -- nem mor -- tu -- o -- rum. Et vi -- tam ven -- tu
  -- ri sae -- cu -- li. A -- men, a -- men, a -- men, a --
  men, a -- men, a -- men, a -- men, a --
  men, a -- men, a -- men, a -- men, a -- men, a -- men, a -- men, a
  -- men. Cre -- do in u -- num De -- um. A -- men, a -- men.
}

tenor =  \relative c' {
  \compressFullBarRests
  \clef "treble_8"
  \key c \major
  \time 4/4
  \tempo "Allegro molto"
  R1*4
  c4 ^"(Tutti)" \f c8. c16 c4 c
  c4 c8. c16 c4 c
  c4 c c bes8 a
  g4 f g8 ( c4 b8 )
  c4 r r8 f e4 ~
  e4 a, r8 e' d d
  d4 g, r e'8 d
  c8 ( [ e ) ] a, b c4 fis,8 g
  a4. a8 a4 d8 d
  d4 e d4. d8
  d4 r r2  R1*2
  e4 e e e
  f8. \f f16 f4\p f f
  e4 \f e \p e8. e16 e4
  d4 \f d \p c \f c \p
  b4 \f ( c8 [ gis ] a4. ) a8
  gis4 r r8 gis ( [ a ) ] b
  \slurDashed c8 ( [ \slurSolid e d c ] b [ gis a ) ] b
  c4 b c g
  g8. g16 g4 a e'
  e8. e16 d4 c ( b8. ) b16
  a4 r r2
  b8 ( [ a ) ] b b b ( [ fis' ) ] e d
  cis4. d16 [ e ] f8 ( [ e ) ] d c
  b4. b8 c4 g8 g
  g4 g c2
  d4 r r2  R1*2
  c4 ~ c8. c16 c4 c
  c2 c4 c
  c4 c g8 a bes a
  g4 f g8 ( c4 b8 )
  c4 r c b ~
  b4 a4. a8 g4 ~
  g4 f2 e4
  f8 ( [ g a b ) ] c ( [ d ) ] e ( [ c ) ]
  d8 g, c4~ ( c8 bes ) a a
  a8. g16 f8 f' e ( [ d ) ] c g
  g8. b16 c4 r8 c a g
  f8 ( [ a ) ] d ( [ e ) ] f4 b,8 c
  d2 d4. d8
  e4 f8 f e4 ( d )
  c4 r r2 R1
  r2 r4 r8 c
  f8 ( [ e d c ) ] b4. \slurDashed d16 ( [ \slurSolid b ) ]
  e8 ( [ d c b ) ] a2 ~
  a4 b8 ( [ c ) ] d4 d8 d
  c4 c8 c c4 ( b )
  c4 r r2 R1*2
  r8 c ^"Solo" c c c8. c16 c4
  r8 b b b16 b b4 c
  des8 des des des c8. c16 c8 c
  bes4. bes8 as4 ges
  g4 ( f8 ) as g4 r
  r8 es'4 ^"Tutti" \f es8 es2
  des8 des16 des des8 des des2
  c8 es es16. es32 es16 c c2
  d4 r g,8 \p c r4
  g8 d' r4 g, des'
  c4 ^\markup{ \italic {cresc.} } c c4. \f b8
  c8 r c \pp r c r b r
  c4 r r8 c \f c c
  c4 c c8. c16 c4
  c4 c8 c c4 bes8 a
  g4 f8 f g ( c4 b8 )
  c4 r r8 f e4 ~
  e4 a, r8 e' d4 ~
  d4 g, r e'8 d
  c8 ( [ e ) ] a, b c4 fis,8 g
  a2 a4 d
  d4 e8 e d2
  d4 r r r8 g,
  g4. g8 g4 g
  f'8 ( [ e ) ] d ( [ c ) ] b ( [ a ) ] g ( [ f ) ]
  e4. e8 e4 e'
  f8. \f f16 f4 \p f f
  e4 \f e \p e e
  d2 \fp c \fp
  b4 \f c8 gis a4. a8
  gis4 r r8 \slurDashed gis ( [ \slurSolid a ) ] b
  c8 ( [ e ) ] d c b ( [ gis ) ] a ( [ b ) ]
  c4 b c r
  r4 e, a8 a e'4 ~
  e4 d c ( b )
  a4 r r2  R1*3
  r2 r4 a8 ^"Solo" f
  bes4 ( a g ) f
  c'4 c, r2 R1*2
  r2 c'4 c
  cis8 \f ( [ e ) ] e g \p g ( [ f ) ] f e
  cis8. d16 d4 c a
  \slurDashed b8 \f ( \slurSolid d4 f \p e ) d8
  b4 c r c
  c4 b a e'
  e4 d r2
  e4. \slurDashed d16 ( [ \slurSolid c ) ] b4. \slurDashed a16 ( [
  \slurSolid g16 ) ]
  c4. \slurDashed d16 ( [ \slurSolid e ) ] f4 f
  e4 a,8 a c4 ( b )
  c8 c ^"Tutti" \f c c c2 ~
  c4 c8 c c2 ~
  c8. c16 c8 c g ( [ a ) ] bes ( [ a ) ]
  g8. g16 f8 f g ( c4 ) b8
  c4 c2 b4 ~
  b8. b16 a8 a a a g4 ~
  g4 f f8. f16 e8 e
  f8 ( [ g ) ] a ( [ b ) ] c ( [ d e ) ] c
  d4 b b b
  c4 \f c \p c8. c16 c8 c
  bes4 \f bes \p bes8. bes16 bes8 bes
  as2 \fp g \fp
  f2 \fp es ^\markup{ \italic {decresc.} } \fp
  \slurDashed d2 \fp ( \slurSolid c \fp )
  b4 \pp r r8 b' \f c ( [ d ) ]
  e8 ( [ g f e ] d ) b c d
  e8. e16 d4 e f
  d4 e c d
  b4 c \slurDashed d2 ( \slurSolid
  c4 ) c c ( b )
  c4 r r2  R1
  r2 r4 r8 \slurDashed c ( \slurSolid
  f8 [ e d c ) ] b4. \slurDashed d16 ( [ \slurSolid b ) ]
  e8 ( [ d c b ) ] a2 ~
  a4 ( b8 [ c ] d4. ) d8
  c4. ( d8 e4 d )
  c4 r r2
  d4 c c ( b )
  c4 r r2
  d4 c c ( b )
  c4 r r2 R1
  c2. c8 c
  c4 c c ( b )
  c4 r r b
  c4 r r b
  c4 r r2 \bar "|."
}

tenorLyricsThree =  \lyricmode {
  Cre -- do in u -- num De --
  um, in u -- num De -- um. Pa -- trem o -- mni -- pot -- en -- tem,
  fa -- cto -- rem coe -- li et ter -- rae, vi -- si -- bi -- li -- um
  o -- mni -- um, o -- mni -- um, et in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num Je -- sum Chri -- stum, Fi -- li --
  um De -- i u -- ni -- ge -- ni -- tum. Et ex Pa -- tre na -- tum an
  -- te o -- mni -- a, an -- te o -- mni -- a sae -- cu -- la. De --
  um de De -- o, lu -- men de _ lu -- mi -- ne, De -- um ve -- rum de De
  -- o ve -- ro. Ge -- ni -- tum, non fa -- ctum, non fa -- ctum, con
  -- sub -- stan -- ti -- a -- lem Pa -- tri: per quem o -- mni -- a
  fa -- cta, fa -- cta sunt. Qui pro -- pter nos ho -- mi --
  nes, qui pro -- pter nos ho -- mi -- nes, et pro -- pter no --
  stram, no -- stram sa -- lu -- tem de -- scen -- dit de coe -- lis,
  de -- scen -- dit, de --
  scen -- dit de coe -- lis. Et in -- car -- na -- tus est de Spi --
  ri -- tu San -- cto ex Ma -- ri -- a Vir -- gi -- ne: Et ho -- mo,
  ho -- mo fa -- ctus est. Cru -- ci -- fi -- xus e -- ti -- am pro no
  -- bis: sub Pon -- ti -- o Pi -- la -- to pas -- sus, pas -- sus,
  pas -- sus, et se -- pul -- tus est, se -- pul -- tus est. Et re --
  sur -- re -- xit ter -- ti -- a di -- e, se -- cun -- dum, se -- cun
  -- dum Scri -- ptu -- ras. A -- scen -- dit in coe -- lum: se --
  det, se -- det ad dex -- te -- ram Pa -- tris, ad dex -- te -- ram
  Pa -- tris. Et i -- te -- rum ven -- tu -- rus est cum glo -- ri --
  a, cum glo -- ri -- a, iu -- di -- ca -- re, iu -- di -- ca -- re vi
  -- vos et mor -- tu -- os: cu -- ius re -- gni non e -- rit fi --
  nis, non, non e -- rit, e -- rit fi -- nis. Et vi -- vi -- fi -- can
  -- tem: Qui cum Pa -- tre, cum Pa -- tre et Fi -- li -- o si -- mul
  ad -- o -- ra -- tur, et con -- glo -- ri -- fi -- ca -- tur. Qui lo
  -- cu -- tus est, lo -- cu -- tus est per Pro -- phe -- tas. Et u --
  nam san -- ctam ca -- tho -- li -- cam et a -- po -- sto -- li --
  cam Ec -- cle -- si -- am. Con -- fi -- te -- or u -- num ba -- ptis
  -- ma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum. Et ex
  -- spe -- cto re -- sur -- re -- cti -- o -- nem, re -- sur -- re --
  cti -- o -- nem mor -- tu -- o -- rum. Et vi -- tam ven -- tu -- ri
  sae -- cu -- li. A -- men, a -- men, a -- men, a -- men, a -- men, a
  -- men, a -- men, a -- men, a -- men, a
  -- men, a -- men, a -- men. Cre -- do in u -- num De -- um. A --
  men, a -- men.
}

bass =  \relative c {
  \compressFullBarRests
  \clef "bass"
  \key c \major
  \time 4/4
  \tempo "Allegro molto"
  R1*4
  c4 ^"(Tutti)" \f c8. c16 c4 c
  c4 c8. c16 c4 c
  c4 c bes'8 ( [ a ) ] g f
  e4 f e8 ( [ c d g ) ]
  c,4 r c8 ( d e d )
  c4. c8 b ( [ c ) ] d c
  b4 b r c'8 b
  \slurDashed a8 ( [ \slurSolid c ) ] a g fis ( [ a ) ] fis e
  d4. d8 d4 d8 d
  g4 c, d4. d8
  g,4 r r2  R1*2
  e'4 e e e
  e8. \f e16 e4\p e e
  e4 \f e \p e8. e16 e4
  e2 \fp e \fp
  e4. \f e8 e4 ( dis8. ) dis16
  e4 r r8 \slurDashed e ( [ \slurSolid fis ) ] gis
  \slurDashed a8 ( [ \slurSolid c b a ] gis [ e fis ) ] gis
  a4 gis a b
  c8. c16 e,4 fis gis
  a8. a16 d,4 e ~ e8. e16
  a,4 r r2
  b'8 ( [ c ) ] b a g4. ( gis8 )
  a8 bes a g \slurDashed f4. fis8
  g8 ( [ as ) ] g ( [ f ) ] es ( [ f ) ] es ( [ d ) ]
  c8 ( [ d ) ] c ( [ bes ) ] as2
  g4 r r2  R1*2
  c4 ~ c8. c16 c4 c
  c2 c4 c
  c4 c bes'8 a g f
  e4 f e8 ( [ c d g ) ]
  c,4 c'8 c fis,8. fis16 gis4
  r4 c,8 c d8. d16 e4
  r4 a,8 a b8. b16 cis4
  d8 ( [ e f g ) ] a ( [ b ) ] c ( [ a ) ]
  g4 r f8 ( [ g ) ] a g
  f4 r8 d e ( [ f g ) ] f
  e4 r r8 a f e
  d4 \slurDashed d'8 ( [ \slurSolid c ) ] b ( [ d ) ] b a
  g2 g4. g8
  c4 f,8 f g2
  c,4 r r2 R1
  r4 r8 g' c ( [ b a g ) ]
  f4. \slurDashed a16 ( [ \slurSolid f ) ] b8 ( [ a g f ) ]
  e4. g16 ( [ e ) ] a8 ( [ g f e ) ]
  d8 ( [ c b a ) ] g4 g'
  c4 a8 a f4 ( g )
  c,4 r r2 R1*2
  r8 e ^"Solo" e e f8. f16 f4
  r8 f f f16 f es4 es
  es8 es es es es8. es16 es8 es
  d4 es as, a
  bes4. bes8 es4 r
  r8 es4 ^"Tutti" \f es8 es2
  e8 e16 e e8 e f2
  fis8 fis fis16. fis32 fis16 fis g2
  as4 r es8 \p es r4
  b8 b r4 c bes
  as4 ^\markup{ \italic {cresc.} } as' g \f ~ g8. g16
  c,8 r f \pp r g r g, r
  c4 r r8 c \f c c
  c4 c c8. c16 c4
  c4 c8 c bes' ( [ a ) ] g f
  e4 f8 f e ( [ c d g ) ]
  c,4 r c8 d e ( [ d ) ]
  c4. c8 b ( [ c d c ) ]
  b4 r r c'8 b
  a8 ( [ c ) ] a g fis ( [ a ) ] fis e
  d2 d4. d8
  g4 c,8 c d2
  g,4 r r r8 g'
  g4. g8 g4 g
  f8 ( [ e ) ] d ( [ c ) ] b ( [ a' ) ] g ( [ f ) ]
  e4. e8 e4 e
  e8. \f e16 e4 \p e e
  e4 \f e \p e e
  e2 \fp e \fp
  e4 \f e8 e e4 ( dis8. ) dis16
  e4 r r8 e ( [ fis ) ] gis
  \slurDashed a8 ( [ \slurSolid c ) ] b a gis ( [ e ) ] fis ( [
  gis8 ) ]
  a4 gis a r
  c4 r r gis
  a8 a d, d e2
  a,4 r r2  R1*5
  c'2 ^"Solo" g
  e8. ^\trill [ f16 ] g4 r g8. c16
  c4. ( d16 [ c ] b8 [ a ) ] g f
  e8. [ f16 ] g4 r2 R1*4
  a4 g8 g f4 fis
  g4 g g4. \slurDashed a16 ( [ \slurSolid b ) ]
  c4 g g4. \slurDashed a16 ( [ \slurSolid b ) ]
  c4 g \slurDashed g4. ( \slurSolid a16 [ b ) ]
  c4 f, g2
  c,4 r c8 \f ^"Tutti" ( [ d ) ] e f
  g2 e8 ( [ f ) ] g ( [ a ) ]
  bes4. bes8 bes a g f
  e8. e16 f8 f e ( [ c d ) ] g
  c,4 r r8 fis gis8. gis16
  a4 r8 c, d d e4
  f4 a,8 a b4 cis
  d8 ( [ e ) ] f ( [ g ) ] a ( [ b c ) ] a
  g4 g g g
  g4 \f g \p g8. g16 g8 g
  g4 \f g \p g8. g16 g8 g
  g2 \fp g \fp
  g,2 \fp g ^\markup{ \italic {decresc.} } \fp
  g1
  g4 \pp r r8 g' \f a ( [ b ) ]
  c8 ( [ e d c ] b ) g a b
  c8. c16 b4 cis d
  b4 c a b
  gis4 a \slurDashed fis ( \slurSolid f
  e4 f ) g2
  c,4 r r2  R1
  r4 r8 g' ( c [ b a g ) ]
  f4. \slurDashed a16 ( [ \slurSolid f ) ] b8 ( [ a g f ) ]
  e4. g16 ( [ e ) ] a8 ( [ g f e ) ]
  d8 ( [ c b a ) ] g4 g'
  c4 f, g2
  c,4 r r2
  b'4 c f, ( g )
  c,4 r r2
  b'4 c f, ( g )
  c,4 r r2 R1
  bes'2 ~ bes8 ( [ a ) ] g f
  e4 f g2
  c,4 r r g'
  c4 r r g
  c,4 r r2 \bar "|."
}

bassLyricsFour =  \lyricmode {
  Cre -- do in u -- num De --
  um, in u -- num De -- um. Pa -- trem o -- mni -- pot -- en -- tem,
  fa -- cto -- rem coe -- li et ter -- rae, vi -- si -- bi -- li -- um
  o -- mni -- um, o -- mni -- um, et in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num Je -- sum Chri -- stum, Fi -- li --
  um De -- i u -- ni -- ge -- ni -- tum. Et ex Pa -- tre na -- tum an
  -- te o -- mni -- a, an -- te o -- mni -- a sae -- cu -- la. De --
  um de De -- o, lu -- men de lu -- mi -- ne, De -- um de De -- o ve -- ro.
  Ge -- ni -- tum, non fa -- ctum, non fa -- ctum, con -- sub -- stan
  -- ti -- a -- lem Pa -- tri: per quem o -- mni -- a, per quem o --
  mni -- a, per quem o -- mni -- a fa -- cta sunt. Qui pro --
  pter nos, nos ho -- mi -- nes et pro -- pter no -- stram, no --
  stram sa -- lu -- tem de -- scen -- dit de coe -- lis, de -- scen --
  dit, de -- scen --
  dit de coe -- lis. Et in -- car -- na -- tus est de Spi -- ri -- tu
  San -- cto ex Ma -- ri -- a Vir -- gi -- ne: Et ho -- mo, ho -- mo
  fa -- ctus est. Cru -- ci -- fi -- xus e -- ti -- am pro no -- bis:
  sub Pon -- ti -- o Pi -- la -- to pas -- sus, pas -- sus, pas --
  sus, et se -- pul -- tus est, se -- pul -- tus est. Et re -- sur --
  re -- xit ter -- ti -- a di -- e, se -- cun -- dum, se -- cun -- dum
  Scri -- ptu -- ras. Et a -- scen -- dit in coe -- lum: se -- det, se
  -- det ad dex -- te -- ram Pa -- tris, ad dex -- te -- ram Pa --
  tris. Et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a, cum
  glo -- ri -- a, iu -- di -- ca -- re, iu -- di -- ca -- re vi -- vos
  et mor -- tu -- os: cu -- ius re -- gni non e -- rit fi -- nis, non,
  non, non e -- rit, e -- rit fi -- nis. Qui ex Pa -- _ tre Fi -- li --
  o -- que pro -- ce -- _ dit. et con -- glo -- ri -- fi -- ca -- tur.
  Qui lo -- cu -- tus est, lo -- cu -- tus est per Pro -- phe -- tas.
  Et u -- nam san -- ctam ca -- tho -- li -- cam et a -- po -- sto --
  li -- cam Ec -- cle -- si -- am. Con -- fi -- te -- or u -- num ba
  -- ptis -- ma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum.
  Et ex -- spe -- cto re -- sur -- re -- cti -- o -- nem, re -- sur --
  re -- cti -- o -- nem mor -- tu -- o -- rum. Et vi -- tam ven -- tu
  -- ri sae -- cu -- li. A -- men, a -- men, a -- men, a -- men, a --
  a -- men, a -- men, a -- men, a -- men, a -- men, a -- men, a -- men, a --
  men. Cre -- do in u -- num De -- um. A -- men, a -- men.
}

\score {
  \new ChoirStaff
  <<
    \new Voice = soprano {
      \set Staff.instrumentName = "S"
      \set Staff.shortInstrumentName = "S"
      \dynamicUp
      \soprano
    }
    \new Lyrics \lyricsto "soprano" \sopranoLyricsOne

    \new Voice = alto {
      \set Staff.instrumentName = "A"
      \set Staff.shortInstrumentName = "A"
      \dynamicUp
      \alto
    }
    \new Lyrics \lyricsto "alto" \altoLyricsTwo

    \new Voice = tenor {
      \set Staff.instrumentName = "T"
      \set Staff.shortInstrumentName = "T"
      \dynamicUp
      \tenor
    }
    \new Lyrics \lyricsto "tenor" \tenorLyricsThree

    \new Voice = bass {
      \set Staff.instrumentName = "B"
      \set Staff.shortInstrumentName = "B"
      \dynamicUp
      \bass
    }
    \new Lyrics \lyricsto "bass" \bassLyricsFour
  >>
}

