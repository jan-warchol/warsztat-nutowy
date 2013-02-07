\version "2.14.2"
#(set-global-staff-size 10)

\paper {
  % ragged-right = ##t 
  ragged-last = ##t
  indent = 12 \mm
}

\header {
  title = "Złota Rybka"
}

common = {
  \key c \major
  \time 4/4
  \tempo Presto
  \override CombineTextScript #'outside-staff-priority = ##f
  \override Beam #'length-fraction = #1.12
  \override Beam #'beam-thickness = #0.57
}

flute = \relative c''' {
  \common
  \set Staff.instrumentName = "Flute 1, 2"
  g16 ( \< gis a b c d e f g! f e d c b a gis ) |
  g!4 -. \ff   \times 2/3 { e8-. g-. c-. } e8.-. f16-. g4-. |
  \times 2/3 { g4 \trill ( f8 } \times 2/3 { e4 \trill d8 } c8-. ) r8 r4 |
  fis,8-. g16-. gis-. b8 a d c f! e |
  a2 gis \startTrillSpan |
  g1 \stopTrillSpan \glissando \> |
  g,4 \! r r2 |
}

oboeOne = \relative c'' {
  \common
  \set Staff.instrumentName = "Oboe 1, 2"
  g16 ( \< gis a b c d e f g! f e d c b a gis ) |
  e4 -. \ff   \times 2/3 { e8-. g!-. c-. } c8.-. d16-. c4-. |
  \times 2/3 { r8 r8 c8-. } \times 2/3 { r8 r8 c8-. } \times 2/3 { c8-. r8 r8 } r4 |
  fis,8-. g16-. gis-. b8 a b a d c  |
  f2 dis |
  e1 \startTrillSpan \> |
  e4 \! \stopTrillSpan r r2 |
}

oboeTwo = \relative c'' {
  \common
  g16 ( \< gis a b c d e f g! f e d c b a gis ) |
  e4 -. \ff   \times 2/3 { e8-. g-. c-. } c8.-. d16-. c4-. |
  \times 2/3 { r8 r8 e,8-. } \times 2/3 { r8 r8 e8-. } \times 2/3 { e8-. r8 r8 } r4 |
  fis8-. g16-. gis-. b8 a b a d c  |
  f2 dis |
  e1 \startTrillSpan \> |
  e4 \! \stopTrillSpan r r2 |
}

clarinet = \transpose bes c' \relative c'' {
  \common
  \set Staff.instrumentName = \markup { "Clarinet in B" \small \flat "1, 2" }
  g16 ( \< gis a b c d e f g! f e d c b a gis ) |
  g!4-. \ff \times 2/3 { e8-. g-. c-. } e8.-. d16-. c4-. |
  \times 2/3 { r8 r8 g8-. } \times 2/3 { r8 r8 g8-. } \times 2/3 { g8-. r8 r8 } r4 |
  r4 dis8-. e16-. fis-. g8 fis g fis |
  b8 a d!2 c4~ |
  c4 \> c2. \startTrillSpan |
  c4 \! \stopTrillSpan r4 r2 |
}

bassoon = \relative c {
  \clef F
  \common
  \set Staff.instrumentName = "Bassoon 1, 2"
  g16 ( \< gis a b c d e f g! f e d c b a gis ) |
  c,4 -. \ff   \times 2/3 { c8-. e-. g!-. } c8.-. f,16-. g4-. |
  c,8 r \times 2/3 { g'8 a b } \times 2/3 { g8-. r8 r8 }  \times 2/3 { e4 d8 } |
  g1  |
  g16 gis a b c d e f g! f e d c b a gis |
  g!1 \startTrillSpan \> |
  c4 \! \stopTrillSpan r r2 |
}

horn = {
  \clef G
  \common
  \set Staff.instrumentName = "Horn in F 1, 2, 3, 4"
  \transpose c f, \relative c' {
    d1 \<
    d4-. \f \times 2/3 { b8-. d-. g-. } b8.-. c16-. d4-. |
    \times 2/3 { d,4 ( c8 } \times 2/3 { b4 a8 } g8-. ) r8 r4 |
    R1
    c'2 ( \> ais |
    b1 )
    R1 \!
  }
}

trumpet = {
  \clef G
  \common
  \set Staff.instrumentName = \markup { "Trumpet in B" \small \flat "1, 2" }
  \transpose c bes \relative c' {
    R1
    fis4-. \mf \times 2/3 { fis8-. a-. d-. } d8.-. e16-. d4-. |
    \times 2/3 { r8 r8 <fis, a>8-. } \times 2/3 { r8 r8 <fis a>8-. } \times 2/3 { <fis a>4-. r8 } r4
    R1
    g2 ( \< eis |
    fis1 )
    R1 \!
  }
}

trombone = \relative c {
  \clef F
  \common
  \set Staff.instrumentName = "Trombone"
  R1 |
  g4-. \mf  \times 2/3 { e8-. g-. c-. }  e8.-. d16-. c4-. |
  \times 2/3 { r8 r8 c8-. } \times 2/3 { r8 r8 c8-. } \times 2/3 { c4-. r8 } r4 |
  R1 |
  g'2 ( fis |
  e1 ) \> |
  R1 \!
}

tuba = \relative c, {
  \clef F
  \common
  \set Staff.instrumentName = "Tuba"
  R1
  c4-. \ff   \times 2/3 { c8-. c-. c-. }   c8.-. c16-.   g4-. |
  c1 |
  g1 |
  g2 ( b |
  c1 ) |
  R1
}

timpani = \relative c {
  \clef F
  \common
  \set Staff.instrumentName = "Timpani"
  g1 \startTrillSpan \< |
  \grace { c8 [ \stopTrillSpan c ] } c4 \f   \times 2/3 { c8 c8 c8 }   g8. g16   c4 |
  c4 r r2 |
  R1*4
}

bassDrum = {
  \clef percussion
  \set Staff.instrumentName = "Bass Drum"
  R1
  c1 \mf
  c4 r c r |
  R1
  R1
  R1
  c1 \pp
}

cymbals = {
  \clef percussion
  \set Staff.instrumentName = "Cymbals"
  c1:32 \pp \<
  c \mf
  r2 c4 r
  R1
  R1
  R1
  c1 \pp
}

snareDrum = {
  \clef percussion
  \set Staff.instrumentName = "Snare Drum"
  c1:32 \pp \<
  \grace { c8 [ c c ] } c1 \mf
  R1
  R1
  R1
  R1
  \grace { c8 [ c c ] } c1 \pp
}

tambourine = {
  \clef percussion
  \set Staff.instrumentName = "Tambourine"
  R1
  R1
  \times 2/3 { r8 r c8-. }  \times 2/3 { r8 r c8-. }  \times 2/3 { c4-. r8 } r4
  R1
  R1
  c1:32 \mp \>
  R1 \!
}

triangle = {
  \clef percussion
  \set Staff.instrumentName = "Triangle"
  R1
  R1
  R1
  r2 c4 \mp c
  c1
  R1
  R1
}

glockenspiel = \relative c'' {
  \common
  \set Staff.instrumentName = "Glockenspiel"
  g4-. \< c-. g'\! r |
  g,4-. \f   \times 2/3 { e8-. g-. c-. }   e8.-. f16-.   g4-. |
  R1 |
  b,4 \glissando g8-.-> r r2 |
  \times 2/3 { r8 r b'-. } \times 2/3 { r8 r b-. } \times 2/3 { b4-. r8 } r4 |
  g,4 \> e d c |
  a \! g r2
}

xylophone = \relative c'' {
  \common
  \set Staff.instrumentName = "Xylophone"
  g4-. \< c-. g'-. c,-.  |
  g4-. \f r r2 |
  \times 2/3 { g'4 f8 } \times 2/3 { e4 d8 } c4 \glissando c,8-.-> r8 |
  R1
  <e' a>2 <c gis'>:16 |
  g1 \> \startTrillSpan |
  R1 \! \stopTrillSpan
}

pianoRight = \relative c'' {
  \common
  \set PianoStaff.instrumentName = #"Piano"
  g4-. \< c-. g'-. c,-.  |
  g4-. \ff   \times 2/3 { e8-. g-. c-. }   e8.-. f16-. g4-. |
  \times 2/3 { g4 \trill f8 } \times 2/3 { e4 \trill d8 } c4 \glissando c,8-.-> r8 |
  fis'8-. g16-. gis-. b8 a d c f! e |
  <e a>2:16 <c gis'>: |
  g1\startTrillSpan \> |
  R1 \! \stopTrillSpan |
}

pianoLeft = \relative c {
  \clef F
  \common
  g2:32 g': |
  c,,4-. \times 2/3 { c8-. c-. c-. }  g8.-. g16-. c4-. |
  \times 2/3 { c4 <e' c'>8-. } \times 2/3 { r8 r <g c>-. } \times 2/3 { <c, c'>8-. r8 r } r4 |
  fis8-. g16-. gis-. b8 a b a d c |
  g16 gis a b c d e f g! f e d c b a gis |
  g1 \startTrillSpan
  R1 \stopTrillSpan
}

violinI = \relative c''' {
  \common
  \set Staff.instrumentName = "Violin I"
  g4:8-. \< c:-. g':-. c,:-. |
  g4-. \ff   \times 2/3 { e8-. ( g-. c-. ) } e8.-. ( f16-. ) g4-. |
  \times 2/3 { g4 \trill ( f8-.) }  \times 2/3 { e4 ( d8-.) } c4-. r |
  fis,8-. g16-. gis-. b8 a d c f! e |
  a2 ( gis ) |
  g1\startTrillSpan \> |
  <c,, as'>4 \pp \stopTrillSpan ^"div. pizz." des32-> a-> f8.-.-> r2 |
}

violinII = \relative c'' {
  \common
  \set Staff.instrumentName = "Violin II"
  g16:32-. \< gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g!:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  e4-. \ff \times 2/3 { c8-. ( e-. g-.) } g8.-. ( d'16-.) c4-. |
  \times 2/3 { r8 r <c, e>8^"pizz." }  \times 2/3 { r8 r <c e>8 }  \times 2/3 { <c e>8 r r } r4 |
  fis8-.^"arco" g16-. ( gis-. ) b8 a b a d c |
  f2 ( dis ) |
  e1 \> \startTrillSpan |
  e4 \pp \stopTrillSpan a32-> ^"pizz." f-> des8.-.-> r2 |
}

viola = \relative c'' {
  \clef C
  \common
  \set Staff.instrumentName = "Viola"
  g16:32-. \< gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g!:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  g4-. \ff \times 2/3 { e8-. ( g-. c-.) } e8.-. ( d16-.) c4-. |
  \times 2/3 {
    r8 r g,8^"pizz."
  }  \times 2/3 { r8 r g8 }  \times 2/3 { g8 r r } r4 |
  r4 dis'8-. ^arco e16-.( eis-.) g8 f g f |
  b ( a ) d2 bis4~ |
  bis4 \> c2. \startTrillSpan |
  as4 \pp \stopTrillSpan des,32 -> ^"pizz." a-> f8.-.-> r2 |
}

cello = \relative c' {
  \clef F
  \common
  \set Staff.instrumentName = "Violoncello"
  g16:32-. \< gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g!:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  e4-. \ff \times 2/3 { c8-. ( e-. g-.) } c8.-. ( f,16-.) g4-. |
  c,8 ^"pizz." r8 \times 2/3 { g' a b }  \times 2/3 { c8 r r } r4 |
  g16:32-.^arco gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  g16:32-. gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  g16:32-. \> gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  as,4 \pp f32->^"pizz." des-> des8.-.-> r2
}

doubleBass = \relative c' {
  \clef F
  \common
  \set Staff.instrumentName = "Double Bass"
  g1:32 \< |
  c,4-. \ff \times 2/3 { c8-. ( c-. c-. ) } g8.-. ( g16-. ) c4-. |
  c4^"pizz." \times 2/3 { g8 a b } c8 r r4 |
  R1
  g16:32-.^arco gis:-. a:-. b:-. c:-. d:-. e:-. f:-. g:-. f:-. e:-. d:-. c:-. b:-. a:-. gis:-. |
  c1 \> |
  as2\pp ^"pizz." r2 |
}


<<
  \new StaffGroup = "wind" <<
    \new Staff \partcombine \flute \flute
    \new Staff \partcombine \oboeOne \oboeTwo
    \new Staff \partcombine \clarinet \clarinet
    \new Staff \partcombine \bassoon \bassoon
  >>

  \new StaffGroup = "brass" <<
    \new Staff { \transposition f \transpose f c' \horn }
    \new Staff { \transposition bes \transpose bes c \trumpet }
    \new Staff \trombone
    \new Staff \tuba
  >>

  \new Staff \timpani

  \new StaffGroup = "drums" <<
    \new RhythmicStaff \bassDrum
    \new RhythmicStaff \cymbals
    \new RhythmicStaff \snareDrum
    \new RhythmicStaff \tambourine
    \new RhythmicStaff \triangle
  >>

  \new Staff \glockenspiel

  \new Staff \xylophone

  \new PianoStaff <<
    \new Staff \pianoRight
    \new Staff \pianoLeft
  >>

  \new StaffGroup = "strings" <<
    \new Staff \violinI
    \new Staff \violinII
    \new Staff \viola
    \new Staff \cello
    \new Staff \doubleBass
  >>
>>