%{
  proper hyphenation of ever = ?
%}

\version "2.17.3"
#(set-global-staff-size 15)

\paper {
  %system-count = #19
  %page-count = #5
  %ragged-last-bottom = ##f

  oddHeaderMarkup = \markup \fill-line {
    " "
    \on-the-fly #not-first-page \fromproperty #'header:title
    \on-the-fly #print-page-number-check-first
    \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup \fill-line {
    \on-the-fly #print-page-number-check-first
    \fromproperty #'page:page-number-string
    \on-the-fly #not-first-page \fromproperty #'header:title
    " "
  }
}

\header	{
  title = "Hallelujah"
  subtitle = "44. część oratorium “Mesjasz”"
  subsubtitle = "(1742)"
  poet = "słowa: por. Apokalipsa 19"
  composer = "Georg Friedrich Händel (1685-1759)"

}

%--------------------------------CONTENT--------------------------------

translation = \markup {
  \typewriter {
    \column {
      " "
      \bold
      "Hallelujah! For the Lord God Omnipotent   reigneth,"
      "Alleluja!   Bowiem  Pan  Bóg Wszechmogący króluje,"
      " "
      \bold
      "the Kingdom   of this world  is become"
      "    Królestwo    tego świata stało się"
      " "
      \bold
      "The Kingdom    of our     Lord and of his         Christ,"
      "    Królestwem    naszego Pana i      jego [Syna] Chrystusa,"
      " "
      \bold
      "And He shall  reign    for ever and ever, King of Kings,  and Lord of Lords."
      "I   On będzie królował na  wieki wieków,  Król    Królów, i   Pan     Panów."
    }
  }
}

sopranomelody =	\relative c'' {
  \dynamicUp
  \key d \major
  \time 4/4
  \tempo "Allegro maestoso" 4=110
  \set Score.tempoHideNote = ##t
  R1*3
  d4.\f a8 b  a  r4 |
  d4. a8 b  a  r d16  d  |
  d8  d  r d16  d  d8  d  r d |
  cis8 ( d4 ) cis8 d4 r |
  % 8
  e4. a,8 fis'8  e8  r4 |
  e4. a,8 fis'8  e8  r8 e16  e16  |
  fis8  e8  r8 e16  e16  fis8  e8  r8 e8 |
  fis8  e8  d4 cis4 r4 |
  % 12
  a2 b4 cis4 |
  d8  d,8  d'4. d8 cis4 |
  b2 a4 r8 e'16  e16  |
  d8  cis8  r8 e16  e16  d8  cis8  r8 e16  e16  |
  fis8  e8  r8 e16  e16  fis8  e8  r4 |
  % 17
  R1 | R1 | r2 r4 r8 d16  d16  |
  d8  d8  r8 d16  d16  d8  d8  r8 d16  d16  |
  d8  d8  r8 d16  d16  d8  d8  r4 |
  % 22
  d2 \f e4 fis4 |
  g8  g,8  g'4. g8 fis4 |
  e2 d4 r8 d16\mf d16  |
  cis8  a8  r8 cis16  cis16  d8 d16  d16  e8  e8  |
  a,4 r8 d16  cis16  b8  b8  r8 e8 |
  % 27
  d8 cis8 d8 e16 d16 cis8 cis16  cis16  e8  cis8  |
  r8 a16  a16  d8  a8  r8 cis16  cis16  e8  cis8  |
  r8 a16  a16  fis'8  d8  r8 cis16  cis16  d8  a8  |
  r8 b16  b16  e8  e8  r8 cis16  cis16  d8 d16  d16  |
  % 31
  d4 cis4 d4 d4 |
  d4 d4 d2 | % \break
  % 33 
  r2 r4 a4 \p |
  a4 g4 fis4 e8.  d16  | d1 |
  r2 fis4 e8.  d16  |
  d2. fis'4-\tweak #'X-offset #-2.5 -\tweak #'Y-offset #-2 \f |
  % 38
  e4 d4 d4 cis4 |
  d4. cis8 d4 d4 | % \break
  cis4. a8 b4 cis4 |
  d2 r2 |  R1*4 |
  %\break | 
  R1*2 |
  % 48
  r2 r4 d4-- |
  a'4-- cis,4-- fis4-- a,4-- |
  d4-- cis8  b8  cis4 ( b8.  a16 )  |
  % 51
  a2 a4^> a4^> | a1 ~ | a1 |
  r4 a4^> a4^> a4^> | a1 ~ | a1 |
  % 57
  r2 d4-> d4-> | d1-> ~ | d1 ~ |
  d4 d4-> e4-> e4-> | e1 ~ | e1 ~ |
  % 63
  e2 fis4-> fis4-> | fis1-> ~ | fis1 ~ |
  fis4. fis8-> g4-> g4-> | g1-> ~ |
  % 68
  g4. g8 fis8(  e8)  fis8(  g8)  |
  e2 r8 cis8\mf d8 e8 |
  a,4 r4 r2 |
  % 71
  r2 r4 a4-- |
  d4-- fis,4-- b4-- d,4-- |
  g4-- fis8  e8  fis4 ( e8.  d16 )  |
  d2 r2 |
  r4 r8 d'8\f g8  fis8  r8 d8 |
  g8  fis8  r4 r2 |
  % 77
  r4 r8 d16  d16  g8  fis8  r8 d16  d16  |
  g8  fis8  r8 a,8 a4-- d4-- |
  fis4-- d4-- d4-- a8  a8  |
  cis4 d8  d8  d4 ( cis4 ) |
  % 81
  d4 r4 a4 a4 |
  d4 r8 a8 a4 a4 |
  d4 r4 a4 a4 |
  d4 r8 a8 a4 a4 |
  d4 r4 r4 a4-- |
  % 86
  d4-- fis4-- b,4-- d4-- |
  g4-- fis8  e8  e2 |
  d4 r4 d4-> d4-> |
  d4-> r8 d8 d4-> d4-> |
  % 90
  d4-> r8 d16 ^\markup{ \italic { (poco a poco stringendo) } }  d16  d8  d8  r8 d16  d16  |
  d8  d8  r8 d16  d16  d8  d8  r8 d16  d16  |
  d8  d8  r4 r4 \tempo Adagio 4=60 d4 |
  d2. d4 | d1
  \bar "|."
}
altomelody = \relative f' {
  \dynamicUp
  \key d \major
  \time 4/4
  \tempo "Allegro maestoso" 4=110
  \set Score.tempoHideNote = ##t
  R1*3
  a4.\f  a8 g8  fis8  r4 |
  a4. a8 g8  fis8  r8 a16  a16  |
  b8  a8  r8 a16  a16  b8  a8  r8 a8 |
  g8(  fis8 e8 ) e8 fis4 r4 |
  % 8
  a4. a8 a8  a8  r4 |
  a4. a8 a8  a8  r8 a16  a16  |
  a8  a8  r8 a16  a16  a8  a8  r8 a8 |
  a4. gis8 a4 r4 |
  % 12
  a2 b,4 cis4 |
  d8  d8  d4. d8 cis4 |
  b2 a4 r8 a'16  a16  |
  a8  a8  r8 a16  a16  a8  a8  r8 a16  a16  |
  a8  a8  r8 a16  a16  a8  a8  r4 |
  % 17
  d,2 e4 fis4 |
  g8  g,8  g'4. g8 fis4 |
  e2 d4 r8 a'16  a16  |
  b8  a8  r8 a16  a16  b8  a8  r8 a16  a16  |
  b8  a8  r8 a16  a16  b8  a8  r4 |
  % 22
  R1 | r2 r4 r8 a16-\tweak #'X-offset #-3 -\tweak #'Y-offset #-2 \mf a16  |
  g8 e16  e16  a8  a8  a8 a16  a16  fis8  d8  |
  r8 e16  e16  cis8  a8  r8 g'16  fis16  e8 a16  g16  |
  fis4 r8 b16  a16  gis8 e16  e16  a4 ~ |
  a4 gis4 a4 r8 e16  e16  |
  a8  fis8  r8 fis16  fis16  e8  cis8  r4 |
  % 29
  d2 \f e4 fis4 |
  g8  g,8  g'4. g8 fis4 |
  e2 d8 a'16  a16  fis8  d8  |
  r8 b'8 b8 b8 a2 |
  % 33
  r2 r4 fis4 \p |
  e4 d4 d4 cis4 | d1 |
  r4 d2 cis4 |
  d2. a'4-\tweak #'X-offset #-2.5 -\tweak #'Y-offset #-2 \f |
  % 38
  a4 d,4 fis4 e8.  d16  |
  d4. e8 fis4 gis4 |
  a4. a8 g4 g4 |
  a2 r2 | R1*4 |
  % 46
  r4 a4-- <d, d'>4-- fis4-- |
  b4-- d,4-- g4-- fis8  e8  |
  fis4 ( e8.  d16 )  d8 a'8 fis8 d8 |
  r8 e8 a8 e8 r4 r8 cis8 |
  d8 (  b'8 )  a2 gis4 |
  % 51
  a4 e4 a4^> a4^> | a1 ~ | a1 |
  r4 a4^> a4^> a4^> | a1 ~ | a1 ~ | a2 r2 |
  % 58
  r4 r8 a8 b8  a8  r8 a8 |
  b8  a8  r8 a16  a16  b8  a8  r8 a16  a16  |
  b8  a8  r4 r2 |
  % 61
  r4 r8 e8 a8  gis8  r8 e8 |
  a8  gis8  r8 e16  e16  a8  gis8  r8 e16  e16  |
  a8  gis8  r4 r2 |
  % 64
  r4 r8 fis8 b8  ais8  r8 fis8 |
  b8  ais8  r8 fis16  fis16  b8  ais8  r8 fis16  fis16  |
  b4 fis4 r2 |
  % 67
  r2 b4 b4 |
  a4. a8 a4 a4 |
  a2 r2 |
  % 70
  r2 r8 fis8 \mf gis8 a8 |
d,8 ( cis8 d8 e16 d16 cis8 ) e8 a8  g8  |
  fis4. ( e8 d4. ) d8 |
  d8 ( cis8 ) d8 d8 d4 ( cis4 ) |
  % 74
  d2 d4 ^> -\tweak #'X-offset #-3 \f d4^> |
  d4^> r8 a'8 b8  a8  r8 a8 |
  b8  a8  r8 d,8^> d4^> d4^> |
  d4^> r8 a'16  a16  b8  a8  r8 a16  a16  |
  b8  a8  r4 r4 a4 |
  % 79
  d4 fis,4 b4 d,4 |
  g4 fis8  e8  e2 |
  fis4 r4 fis4 fis8.  g16  |
  a4 r8 fis8 fis4 fis8.  g16  |
  a4 r4 fis4 fis4 |
  a4 r8 fis8 fis4 fis8.  g16  |
  a4 r4 r4 fis4-- |
  % 86
  fis4-- fis4-- d4-- a'4-- |
  e4-- a8  a8  a2 |
  a4 r8 a8 b8  a8  r8 a8 |
  b8  a8  r8 a8 b8  a8  r8 a8 |
  % 90
  b8  a8  r8 a16  a16  b8  a8  r8 a16  a16  |
  b8  a8  r8 a16  a16  b8  a8  r8 a16  a16  |
  b8  a8  r4 r4 fis4 |
  g2. g4 | fis1
  \bar "|."
}
tenormelody = \relative c' {
  \dynamicUp
  \key d \major
  \time 4/4
  \tempo "Allegro maestoso" 4=110
  \set Score.tempoHideNote = ##t
  R1*3
  fis4.\f d8 d8  d8  r4 |
  fis4. d8 d8  d8  r8 d16  d16  |
  g8  fis8  r8 d16  d16  g8  fis8  r8 d8 |
  e8 ( a,4 ) a8 a4 r4 |
  % 8
  cis4. e8 d8  cis8  r4 |
  cis4. e8 d8  cis8  r8 e16  e16  |
  d8  cis8  r8 e16  e16  d8  cis8  r8 e8 |
  d8 ( e8 fis8 ) d8 e4 r4 |
  % 12
  a,2 b4 cis4 |
  d8  d,8  d'4. d8 cis4 |
  b2 a4 r8 a16  a16  |
  fis'8  e8  r8 e16  e16  fis8  e8  r8 e16  e16  |
  d8  cis8  r8 e16  e16  d8  cis8  r4 |
  % 17
  d2 e4 fis4 |
  g8  g,8  g4. g8 fis4 |
  e2 d4 r8 d'16  d16  |
  g8  fis8  r8 d16  d16  g8  fis8  r8 d16  d16  |
  g8  fis8  r8 d16  d16  g8  fis8  r4 |
  % 22
  r4 r8 d16 \mf d16  cis8  a8  r8 d16  d16  |
  b8  b8  r8 e16  e16  cis8 a16  a16  d4 ~ |
  d4 cis4 d8 fis16  fis16  a8  fis8  |
  % 25
  a,2-\tweak #'X-offset #-1.6 -\tweak #'Y-offset #-2 \f b4 cis4 |
  d8  d,8  d'4. d8 cis4 |
  b2 a8  e'16 \mf e16  cis8  a8  |
  r8 d16  d16  fis8  d8  r8 e16  e16  cis8  a8  |
  % 29
  d2 \f e4 fis4 |
  g8  g,8  g'4. g8 fis4 |
  e2 d4. fis8 |
  g4. g8 fis2 |
  % 33
  r2 r4 d4 \p |
  a4 d,4 a'4. a8 |
  a1 | % 36
  r2 a4 g8.  fis16  |
  fis2. d'4 -\tweak #'X-offset #-2.5 \f |
  % 38
  e4 g4 a,4. a8 |
  a4. g8 a4 d4 |
  e4. d8 d4 e4 |
  fis2 r2 | R1 |
  % 43
  r2 r4 d4-- |
  a'4-- cis,4-- fis4-- a,4-- |
  d4-- cis8  b8  cis4 ( b8.  a16 )  |
  % 46
  a4 r4 r8 a8 d8 d8 |
  d4 r8 b8 e8 cis8 d8 d8 |
  d4 ( cis4 ) d4 r4 |
  % 49
  r2 r8 d8 cis8 a8 |
  fis'8 ( e4 ) fis8 e8  e8  r8 e8 |
  e4 cis4 r2 |
  % 52
  r4 r8 e8 fis8  e8  r8 e8 |
  fis8  e8  r8 e16  e16  fis8  e8  r8 e16  e16  |
  fis8  e8  r4 r2 |
  % 55
  r4 r8 e8 fis8  e8  r8 e8 |
  fis8  e8  r8 e16  e16  fis8  e8  r8 e16  e16  |
  fis8  e8  r4 r2 |
  % 58
  r4 r8 d8 g8  fis8  r8 d8 |
  g8  fis8  r8 d16  d16  g8  fis8  r8 d16  d16  |
  g8  fis8  r4 r2 |
  % 61
  r4 r8 b,8 cis8  b8  r8 b8 |
  cis8  b8  r8 b16  b16  cis8  b8  r8 b16  b16  |
  cis8  b8  r4 r2 |
  % 64
  r4 r8 cis8 d8  cis8  r8 cis8 |
  d8  cis8  r8 cis16  cis16  d8  cis8  r8 cis16  cis16  |
  d4 d4 r2 |
  % 67
  r2 d4 d4 |
  e4. e8 d8 ( cis8 ) d8 ( e8 ) |
  cis2 r2 |
  % 70
  r8 a8\mf b8 cis8 fis,8  a8  a4 ~ |
  a4 gis4 a4 r4 |
  r8 a8 d8 cis8 b4. a8 |
  g4 a8  b8  a2 |
  % 74
  a2 d4-> -\tweak #'X-offset #-3 -\tweak #'Y-offset #-2 \f d4-> | d1-> ~ |
  d4. d8-> d4-> d4-> | d1-> ~ |
  % 78
  d4 r8 fis8 fis4-- d4-- |
  d4-- d4-- b4-- a8  a8  |
  g4 a8  a8  a2 |
  a4 r4 d4 d8.  e16  |
  % 82
  fis4 r8 d8 d4 d8.  e16  |
  fis4 r4 d4 d4 |
  fis4 r8 d8 d4 d8.  e16  |
  fis4 r4 r4 d4-- |
  % 86
  d4-- a4-- b4-- a4-- |
  cis4-- d8  d8  d4 ( cis4 ) |
  fis4 r8 d8 g8  fis8  r8 d8 |
  g8  fis8  r8 d8 g8  fis8  r8 d8 |
  % 90
  g8  fis8  r8 d16  d16  g8  fis8  r8 d16  d16  |
  g8  fis8  r8 d16  d16  g8  fis8  r8 d16  d16  |
  g8  fis8  r4 r4 a,4 |
  b2. b4 | a1
  \bar "|."
}
bassmelody = \relative f {
  \dynamicUp
  \key d \major
  \time 4/4
  \tempo "Allegro maestoso" 4=110
  \set Score.tempoHideNote = ##t
  R1*3
  d4. \f fis8 g8  d8  r4 | % 5
  d4. fis8 g8  d8  r8 fis16  fis16  | % 6
  g8  d8  r8 fis16  fis16  g8  d8  r8 fis8 | % 7
  e8 ( d8 a'8 ) a8 d,4 r4 |
  % 8
  a'4. cis8 d8  a8  r4 | % 9
  a4. cis8 d8  a8  r8 cis16  cis16  |
  d8  a8  r8 cis16  cis16  d8  a8  r8 cis8 | % 11
  d8  cis8  b4 a4 r4 |
  % 12
  a2 b4 cis4 | % 13
  d8  d,8  d'4. d8 cis4 | % 14
  b2 a4 r8 cis16  cis16  | % 15
  d8  a8  r8 cis16  cis16  d8  a8  r8 cis16  cis16  | % 16
  d8  a8  r8 cis16  cis16  d8  a8  r4 |
  % 17
  d,2 e4 fis4 | % 18
  g8  g,8  g'4. g8 fis4 | % 19
  e2 d4 r8 fis16  fis16  |
  g8  d8  r8 fis16  fis16  g8  d8  r8 fis16  fis16  | % 21
  g8  d8  r8 fis16  fis16  g8  d8  r4 | R1 | R1 |
  % 24
  r4 r8 a'16-\tweak #'X-offset #-3.4 -\tweak #'Y-offset #-2 \mf a16  fis8  d8  r4 | % 25
  a'2-\tweak #'X-offset #-1.6 -\tweak #'Y-offset #-2 \f b4 cis4 | % 26
  d8  d,8  d'4. d8 cis4 | % 27
  b2 a4 r8 a16-\tweak #'X-offset #-3.4 -\tweak #'Y-offset #-2 \mf  a16  | % 28
  fis8  d8  r8 d'16  d16  cis8  a8  r4 |
  % 29
  r4 r8 d16  d16  cis8  a8  r8 d16  d16  |
  b8  g8  r8 e16  e16  a8  a8  r8 b16  b16  | % 31
  g8 e16  e16  a8.  g16  fis4 r8 d'16  d16  | % 32
  b8 g16  g16  b8  cis8  d2 |
  % 33
  r2 r4 d,4 \p | % 34
  cis4 b4 a4 g'8.  fis16  | % 35
  fis1 | % 36
  r2 a,4. a8 | % 37
  d2. d'4-\tweak #'X-offset #-2.5 -\tweak #'Y-offset #-2 \f |
  % 38
  cis4 b4 a4 g8.  fis16  | % 39
  fis4. e8 d4 b'4 |
  a4. fis8 g4 e4 |
  % 41
  d4. a'8 d4-- fis,4-- | % 42
  b4-- d,4-- g4-- fis8  e8  | % 43
  e2-\trill d4 r4 |
  % 44
  r4 r8 a'8 d8  d,8  r8 fis8 | % 45
  b8 (  gis8 )  a4 r8 e8 d8 e8 | % 46
  cis8 a'8 g8 a8 fis4 r8 fis8 | % 47
  g8  d8  r4 r4 r8 g8 |
  % 48
  a8  a,8  r8 a'8 fis8  d8  r8 d'8 | % 49
  cis8  a8  r8 cis8 d8  d,8  r8 fis8 |
  b8 gis8 a8 d,8 e8  e8  r8 e8 | % 51
  cis4 a4 r2 |
  % 52
  r4 r8 cis'8 d8  a8  r8 cis8 | % 53
  d8  a8  r8 cis16  cis16  d8  a8  r8 cis16  cis16  | % 54
  d8  a8  r4 r2 |
  % 55
  r4 r8 cis8 d8  a8  r8 cis8 | % 56
  d8  a8  r8 cis16  cis16  d8  a8  r8 cis16  cis16  | % 57
  d8  a8  r4 r2 |
  % 58
  r4 r8 fis8 g8  d8  r8 fis8 | % 59
  g8  d8  r8 fis16  fis16  g8  d8  r8 fis16  fis16  |
  g8  d8  r4 r2 |
  % 61
  r4 r8 gis8 a8  e8  r8 gis8 | % 62
  a8  e8  r8 gis16  gis16  a8  e8  r8 gis16  gis16  | % 63
  a8  e8  r4 r2 |
  % 64
  r4 r8 ais8 b8  fis8  r8 ais8 | % 65
  b8  fis8  r8 ais16  ais16  b8  fis8  r8 ais16  ais16  | % 66
  b4 b,4 r2 |
  % 67
  r2 b'4 b4 | % 68
  cis4. cis8 d4 d,4 | % 69
  a'4. a,8 \mf a'4-- cis,4-- |
  fis4-- a,4-- d4-- cis8  cis8  | % 71
  b2 a4 r4 |
  % 72
  r2 r8 d8 g8 fis8 | % 73
  e4 fis8 (  g8 )  a4 g8  a8  | % 74
  fis4 d4 d'4-> -\tweak #'X-offset #-3 -\tweak #'Y-offset #-2 \f d4-> | % 75
  d4-> r8 fis,8 g8  d8  r8 fis8 | % 76
  g8  d8  r8 d'8-> d4-> d4-> | % 77
  d4-> r8 fis,16  fis16  g8  d8  r8 fis16  fis16  |
  % 78
  g8  d8  r8 d8 d'4-- fis,4-- | % 79
  b4-- d,4-- g4-- fis8  fis8  |
  e4 d8  d8  a'2 | % 81
  d,4 r4 d4 d4 | % 82
  d'4 r8 d,8 d4 d4 | % 83
  d'4 r4 d,4 d4 | % 84
  d'4 r8 d,8 d4 d4 |
  % 85
  d'4 r8 d,8 d'4-- fis,4-- | % 86
  b4-- d,4-- g4-- fis8  fis8  | % 87
  e4-- d8  d8  a'2 | % 88
  d,4 r8 fis8 g8  d8  r8 fis8 | % 89
  g8  d8  r8 fis8 g8  d8  r8 fis8 |
  % 90
  g8  d8  r8 fis16  fis16  g8  d8  r8 fis16  fis16  | % 91
  g8  d8  r8 fis16  fis16  g8  d8  r8 fis16  fis16  | % 92
  g8  d8  r4 r4 d4 | % 93
  g2. g4 | % 94
  d1
  \bar "|."
}
%--------------------------------LYRICS--------------------------------
sopranotext =  \lyricmode {
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- _ le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- _ lu -- _ _ jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  The king -- dom of this _ world is be -- _ come
  the King -- dom of our Lord and of His Christ, and of His Christ.
  And He shall reign for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords, and Lord of Lords.
  And He shall reign,
  and He shall reign for e -- ver and e -- ver,
  for e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  And He shall reign for e -- ver, for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords.
  And He shall reign for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah!
}
altotext =  \lyricmode {
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God \once \override LyricText #'Y-offset = #-1.5 om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- _ le -- lu -- _ jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  The king -- dom of this world is be -- come
  the King -- dom of our _ Lord and of His Christ, and of His Christ.
  And He shall reign for e -- ver and e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  for e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  King of Kings, and Lord of Lords,
  and He shall reign, and He shall reign for e -- ver and e -- ver,
  King of Kings, for e -- ver and e -- ver,
  and Lord of Lords, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  And He shall reign for e -- ver and e -- ver,
  King of _ Kings, and Lord of _ Lords,
  King of Kings, and Lord of _ Lords.
  And He shall reign for e -- ver and e -- ver, for e -- ver and e -- ver, for e -- ver and e -- ver,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah!

}
tenortext =  \lyricmode {
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth, hal -- le -- lu -- jah!
  The king -- dom of this world is be -- _ come
  the King -- dom of our Lord and of His Christ, and of His Christ.
  And He shall reign for e -- ver and e -- ver,
  and He shall reign for e -- _ ver and e -- ver,
  and He shall reign for e -- ver and e -- ver!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  King of Kings, and Lord of Lords,
  and He shall reign, and He shall reign, and He shall reign for e -- ver and e -- ver,
  King of Kings, and Lord of Lords.
  And He shall reign for e -- ver, for e -- ver and e -- ver,
  King of _ Kings, and Lord of _ Lords,
  King of Kings, and Lord of _ Lords.
  And He shall reign for e -- ver and e -- ver, for e -- ver and e -- ver, for e -- ver and e -- ver,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah!
}
basstext =  \lyricmode {
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- _ lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!
  For the Lord God om -- ni -- po -- tent reign -- eth,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah!
  The king -- dom of this _ world is be -- come
  the King -- dom of our _ Lord and of His Christ, and of His Christ.
  And He shall reign for e -- ver and e -- ver, for e -- ver and e -- ver!
  And He shall reign, and He shall reign for e -- ver, for e -- ver and e -- ver,
  for e -- ver and e -- ver, for e -- _ ver, for e -- ver and e -- ver!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  For e -- ver and e -- ver, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  King of Kings, and Lord of Lords,
  and He shall reign for e -- ver and e -- ver!
  And He shall reign for e -- ver and e -- ver,
  King of Kings, for e -- ver and e -- ver,
  and Lord of Lords, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  And He shall reign for e -- ver, for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords.
  And He shall reign for e -- ver, for e -- ver and e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah, hal -- le -- lu -- jah,
  hal -- le -- lu -- jah!
}


%--------------------------------FINAL STRUCTURE--------------------------------

\translation

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \sopranotext

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \altotext

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \tenortext

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \basstext
  >>
  
  \layout {
    indent = 0\cm
    \compressFullBarRests
    \context {
      \Staff \consists "Ambitus_engraver"
    }
    \context {
      \Score
      \override BarNumber #'break-visibility = #'#(#f #t #t)
      \override BarNumber #'self-alignment-X =
      #(lambda (grob)
         (let ((break-dir (ly:item-break-dir grob)))
           (set! (ly:grob-property grob 'self-alignment-X)
                 (if (= break-dir RIGHT)
                     1
                     0))))

      \override BarNumber #'stencil =
      #(lambda (grob)
         (let ((break-dir (ly:item-break-dir grob)))
           (set! (ly:grob-property grob 'font-size)
                 (if (= break-dir RIGHT)
                     -1
                     -3))
           (ly:text-interface::print grob)))
    }
  }
}
