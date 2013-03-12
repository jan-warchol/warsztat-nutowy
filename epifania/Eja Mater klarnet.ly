\version "2.15.33"

\header {
  title = "Stabat Mater"
  subtitle = "III. Eja Mater"
  composer = "Antonín Dvořák"
  instrument = \markup { \concat { "Clarinetti in B" \flat } }
}

\score {
  \transpose bes c' {
    \relative c'{
      \compressFullBarRests
      \key c \minor
      \time 4/4
      \tempo "Andante con moto."
      ees4--\pp ^\markup \italic ten.  ees4-- ees4-- ees4--
      ees4-- ees4-- ees4-- ees4--
      ees4-- ees4-- \cresc ees4-- ees4--
      ees4-- ees4-- ees4-- \mf ees4 (
      f) f--\> g-- b--
      c2. \p \> ( b4
      c4 ) \pp r4 r2
      r4 ees,4--\pp ^\markup \italic ten.  ees4-- ees4--
      r4 ees4-- ees4-- ees4--
      r4 ees4-- \< ees4-- ees4--
      f \mf r4 r2
      r4 f \p f f
      r f\< f f\!
      r4 \stemUp as-\tweak #'extra-offset #'(0 . 0.4) \mf as g \stemNeutral
      g r4 r2
      r2 r4 as'8 ( \> f )
      es \p \> ( d f es g f es d )
      d ( \pp es ) es4 r2
      R1*3
      r2 bes4-- \pp bes--
      bes4-- bes2-> bes4--
      bes4-- bes2-> r4
      R1
      g2. \p r4
      es'4-.\pp es8. -\tweak #'positions #'(3 . 3) ( d16 es4 ) r4
      es4-. es8.-\tweak #'positions #'(3 . 3) ( d16 es4 ) r4
      es4-. es ( \< d2 \> )
      f8( \! es) es4-- \p ^\markup \italic tenuto  bes-- bes--
      des-- \cresc des-- des-- des--
      des-- des-- des-- des--
      d!-> \f d-> d-> d->
      d-> d-> d-> d \p
      g1~ \fz \>
      g4\p r4 r4 g, \p ( \mark \default
      es'2 -\markup \italic dolce d4 c8 b )
      g2. r8 \shape Slur #'((-0.6 . 0.8)(0 . 0.6)(-0.5 . 0.3)(0 . 0)) g (
      es'2-\tweak #'extra-offset #'(0 . -0.2) \< g8 f es d \! )
      \tweak Stem #'length #6.3
      c2 ( -\tweak #'extra-offset #'(0 . 0.3) \>
      \tweak Stem #'length #6.3
      b )
      \tweak Stem #'length #6.3
      c2-\tweak #'extra-offset #'(0 . 0.3) \p ( es4 d8 c )
      c4. ( d8 c2)
      c4 \cresc ( f es d)
      c4. ( d8 c2)
      \shape Slur #'((0 . -1)(0 . 0.4)(0 . 0)(0 . 0))
      c4\f ( as' g f )
      es ( \> d4 \tweak Beam #'positions #'(-2.25 . -2.7) c8 b c as )
      g2.\p ( b4
      c) r4 r2
      r2 g2~ \dim
      g4 \! r g2\pp (
      es4 ^\markup \italic rit. ) r4 g2 (
      es4 ) ^\markup \italic "a tempo" r4 r2
      r4 c'8.\pp ( d16 es2 )
      r4 c8. ( d16 es2 )
      r4 c8._\markup \italic "poco a poco cresc." ( d16 e2 )
      r4 \tweak Beam #'positions #'(-2.7 . -2.05) as,8. ( c16 f2 )
      r4 \tweak Beam #'positions #'(-3 . -2.25) as,8. ( c16 as'2 )
      r4 c,8. ( \<  f16 as2\! )
      r4 \tweak Beam #'positions #'(-1.25 . -0.8) d,8. ( \<  f16 as2\! )
      g2-\tweak #'extra-offset #'(0 . 0.4) \f r
      g r
      g2.~
      \once \override TieColumn #'tie-configuration = #'((7.5 . 1))
      \tweak Beam #'positions #'(-1.8 . -2.7)
      g8 -\tweak #'extra-offset #'(-0.5 . 0.4) _\markup \italic dim. g, -.
      g1 \> ~
      g4 \p r g \pp g
      R1*2
      r4 es-- \pp es-- es--
      r4 es-- es-- es--
      r4 es \< f \> f
      f\p r r2
      r4 f _\markup \italic "poco a poco cresc." f f
      r f f f
      \stemUp
      r as as g
      \stemNeutral
      g\f r r2
      r2 r4 as'8( \p \tweak #'minimum-length #9 \> f )
      es( \p \> d f es g f es d )
      d \pp ( es) es4 r2
      R1*4
      r4 \tweak Beam #'positions #'(2.85 . 2.58) g,8. ( \pp f16 g8 ) r r4
      r4 \tweak Beam #'positions #'(2.85 . 2.58) g8. ( f16 g8 )
      r8 \tweak Beam #'positions #'(2.6 . 3) g8. ( as16
      \tweak Beam #'positions #'(-2.25 . -1.8)
      bes8. \< es16 ) es2 \> d8. ( c16 ) \!
      c8 ( bes) bes4 r2
      r4 d8. ( \pp c16 d8 ) r r4
      r4 d8. ( c16 d8 ) r r4 \mark \default
      d8.\f ( g16 ) g4-> g-> g->
      g4-> g-> g-> g->
      d4-> d \dim d d
      d4 d d d \p
      R1
      r2 r4
      \shape Slur #'(((0 . 0.8)(0 . 1.2)(0 . 1.6)(0 . 2))
                     ())
      g, _\markup { \dynamic p \italic dolce } (
      es'2 d4 c8 b )
      g2 -\tweak #'extra-offset #'(0 . 0.3) \< (
      \tweak Stem #'length #6 b) \!
      c4 ( es g8 \> f es d )
      c1 \p
      c2 ( es4 d8 c )
      c4.( \cresc d8 c2 )
      c4 ( f es d )
      c2. \f \< as'4 (
      g \> f es4. ) c8
      \break
      \shape Slur #'((0 . 0)(0 . 0)(-1 . -0.2)(-0.8 . -0.8))
      \tweak Beam #'positions #'(-2.25 . -2.7)
      c8 \p ( b c as g4. f8 )
      es4 r g4. ( \dim f8
      es4 ) \! r4 r2
      r2 g4. ( \pp f8
      es8) r r4 g,4( -\tweak #'X-offset #-4.2 -\tweak #'Y-offset #-2.3 \pp b
      c ) r4 r2
      R1*2
      R1\fermataMarkup
      \bar "|."
    }
  }
}
