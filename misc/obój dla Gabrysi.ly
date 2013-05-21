\version "2.17.2"

\header {
  instrument = \markup { Obój }
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  left-margin = 15 \mm
  right-margin = 15 \mm
}

\score {
  \relative f' {
    \clef G
    \key g \minor
    \time 3/4

    R2.*7
    f'2.~ \pp \<
    f
    bes2 \mf f4
    g8.\( bes16\) es,2 \trill
    d2 r4
    R2.*4
    f4~\( \pp f16. es32 d16. c32 bes16. a32 bes16. c64 d
    d8( \cresc c8~ c16)\) f,\( a c f16. g32 a16. f32
    bes8.(\mf a32 bes) \) bes8~ \trill bes32 a bes c d16.( bes32 f d c bes)
    g'8 ^\markup \translate #'(-0.65 . 0) \center-column {
      \translate #'(0 . -1.1) \magnify #0.8 \sharp
      \musicglyph #"scripts.turn"
    }
    ( \( g16 a32 bes) es,2\trill
    d2\)\p \breathe g4~ \p g8 c c( a) f4~
    f8 bes bes g g16( e f g
    a8 a32) f32( g a bes16. a32 bes g e c) c'8.( f,16)
    d16( d' c32 bes a g) a4( g)\trill
    f2 \breathe f4~ _\markup \italic dolce (
    f8 bes16 g f8 es~ es4~
    es16 d32 c a'16. f32 es8 d~ d4~
    d16 es64 d cis d g16. es32 d8 c~ c4~
    c16 a' f d c8 bes~ bes4~
    bes8 ) \breathe es16\( c a f a c\) a'4~\(
    a32 es d c bes a g fis g d g a bes g bes d g\) fis g16~g8~
    g8 es d c16 bes a4\trill
    g4\p \breathe bes8.( c32 d ) d8.\trill c32 d
    es2~ ( es16. d'32 c16. bes32
    a16. bes32 a16. g32 f8) \cresc \breathe c16 d es8.\trill ( d32 es)
    d2~\< d16.\! es32 d16. c32
    bes16. a32 g16. fis32 g d g a bes d g a bes16.\f a32 g f e d
    d16( \( cis) cis8~ cis16\) bes'( a gis a16. f32 e16. d32
    d8.\turn ) bes'16 e,2\trill \(
    d2 \f \) r4
    R2.
    f2.~ \f
    f2~ f8. e32 f
    bes2~ bes16. a32 bes16. f32
    g8.( a32 bes es,2\trill )
    d2\f \breathe g4~
    g8. a32\( bes c16. bes32 c16.a32\) g16( f~ f8~
    f16) d \( c bes \) bes'16. a32 bes16. g32 f16 es~ es8~
    es16 c\( a g f a c es\) d4~
    d8. g32\( f es f es c \) d16~ \( d64 c bes c \) c4\trill
    bes2 \breathe g'4~\f
    g8 c c a f4~
    f8 bes bes g g es
    es4. c8 d4~
    \bar "|."
  }
  \layout {
    \compressFullBarRests
    \override DynamicTextSpanner #'style = #'none

    \override Score.SpacingSpanner #'common-shortest-duration =
    #(ly:make-moment 1 16)
  }
}