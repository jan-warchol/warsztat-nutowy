\version "2.14.1"

\header {
  composer = "Henryk Wieniawski"
  title = Legenda
  opus = 17
  instrument = violin
  tagline = ##f
}

\paper {
  top-markup-spacing #'basic-distance = #10
  system-count = #9
  ragged-last-bottom = ##f
}

\new Staff \relative c'' {
  \key g \minor
  \time 3/4
  \tempo Andante
  \set Score.skipBars = ##t
  R2.*6
  <<
    { \new CueVoice { \voiceOne es,2->^ftp d4-> } b'4\rest b4\rest }
    \new CueVoice { \voiceTwo g,16 ( a g a  g a g a  fis a fis a) | <g b d>4 q }
  >>
  d'8.( \p \upbow _0 -\tweak #'X-offset #2 _\markup \italic semplice d'16_2^D ) |
  d2 cis4 |
  d4. es8( d g,-1 ) |
  bes2 ( a4_3 ) |
  g2 d8. ( _0 d'16 _0_4 ) |
  d2^1^A cis4 ^1 |
  d4. ^2  g8 -- ^3 _4 f ( \> bes, ^1 ) |
  d2 ( c4 ) \! |
  bes2~ ( \< bes8 c16 ^1 d ) |
  es4 ^3 -> \! es-> es-> |
  es16 [ \upbow d \appoggiatura { d [ es ] } d cis ] d4~ ( \cresc d8 \! es16 ^1 f) |
  g4-> \< g-> g-> |
  g16 ([ \upbow \f f ) \appoggiatura { f [ g ] } f e] f2 \> |
  f16 \upbow \p ( g _\markup \italic espress. f g ) f2 ~ |
  f16 \< g( f ) g-> f2~ ( |
  f16 \f ^\markup \italic "poco rit." g ) ^2 f-> g-> f2 \> |
  \times 2/3 { ges8 \mp ^1 ( as bes ) } bes4( \> \times 2/3 { bes,8 ^1 c cis ) } |
  d2-- \pp ^\markup \italic "a tempo" ( <cis e>4--) \cresc |
  <d f>4.\! <es? g>8 -> <c a'>-> <bes bes'>-> |
  <g, g'>2.-> -\tweak #'X-offset #-3 -\tweak #'Y-offset #-3 \f |
  <a a'>-> |
  <bes bes'>-> |
  <c c'> -> |
  \override TrillSpanner #'direction = #DOWN
  <d d'>2.*5/6 -> ^1^4  \startTrillSpan s8 \stopTrillSpan |
  \afterGrace <d d'>2.-> ( ^\markup \italic "rit." \startTrillSpan { <cis cis'>16 [ \stopTrillSpan <d d'> ] ) }  |
  <g, g'>2.~  ^2 ^\markup \italic "a tempo" \> |
  q4 \p r r |
  R2.*5 |
  r4 r4 -\tweak #'X-offset #-1 _\markup { \concat { \italic più \dynamic f } } d'8.( _0 d'16^D ) _2 |
  d2 cis4 |
  d4. es8 ( d g, ) ^1 |
  bes2 ( a4 ) _3 |
  g2  d8. ( \downbow d'16 ) _0_4 |
  d2 ^1 ^A cis4 ^1 |
  d4. ^2 g8 -- ^3 \> f ( bes, ^1 ) |
  d2 ( c4) |
  bes2~ ( \< bes8 c16 ^1 d ) |
  es4 \! -> ^\markup \italic "poco agitato" es-> es-> |
  es16 [ d \appoggiatura { d [ es ] } d cis ^1 ] d4~ ^2 d8 \cresc e16 ^0 \! f^1 |
  g4-> g-> g-> |
  g16 ([ fis ) \appoggiatura { fis [ g ] } fis e ^0] \acciaccatura e8 a2~ -> \sf \> |
  \times 4/5 { a16 g \! \upbow g ( fis ) e } \acciaccatura e8 a2~ -> \sf \> ( |
  a16 g \! ) g a ^1 bes2~ \<
  |
  bes8 \! _\markup \italic appassionato bes ^4 ^A
  \times 2/3 { a8 ^\markup \italic rit. g d ^1 }
  \times 2/3 { f! ( es8. ^3 d16 ) }
  |
  \tempo "Tempo I"
  <d, d'>2 _2_0 -\tweak #'X-offset #-2.5 \f <cis cis'>4 _4_1 |
  <d d'>4. _4_1 <es es'>8 ( <d d'> ) <g, g'> ^2 |
  <bes bes'>2.
  |
  \afterGrace <a a'> 2. ( \startTrillSpan
  {
    \once \override Beam #'positions = #'(2.5 . 2.5)
    <g g'>16 ^\markup \finger "3-" [ \stopTrillSpan
    <bes bes'> _\markup \finger "4-" _\markup \finger "1-"
    <a a'> ] )
  }
  |
  \override DynamicText #'extra-offset = #'(0 . 1.5)
  \override DynamicTextSpanner #'extra-offset = #'(0 . 1.5)
  \override Hairpin #'extra-offset = #'(0 . 1.5)
  <g g'>2. \f \> |
  <g g'>2. \f \> ^1 |
  <g a'>2. \f \> |
  <<
    {
      \voiceOne a'2 \f \> ( es4 ) ^1 |
      bes16 \mf \dim ( c bes a\! bes g bes^1 d cis c^3 bes a ) |
      bes16 \! ( c bes a\! bes g bes^1 d cis c^3 bes a ) |
      bes ( g c a bes g c a bes g c a ) |
      bes ( c bes g^\markup \italic rit.  bes c bes g  bes c bes g ) |
    }
    \new Voice {
      \voiceTwo g2.
      d'2.
      d \p
      d \pp
      d \ppp
    }
  >>
  \oneVoice |
  \key g \major
  \time 2/2
  \tempo "Allegro moderato"
}
