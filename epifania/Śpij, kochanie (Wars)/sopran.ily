\version "2.16.1"

% -*- master: ./pomocnicze/sopran-solo.ly;

% Uwaga! z przyczyn technicznych zawsze przed
% skompilowaniem partii trzeba zapisywać plik.

sopran = \relative c'' {
  \clef treble
  \key g \major
  \time 2/4
  \tempo Moderato
  \dynamicUp
  \autoBeamOff
  %str1
  \partial 4 r4
  R2*3
  b8 \mf g d a'
  g4 r
  b8 g d a'
  g4 r
  e8 g c e
  d b g8. a16
  b8 g fis g
  a4 r8 d,
  d'4. \f b8
  a d, r b'16 c
  %str2
  d e d e d8 b
  a d, r g16 a
  b b b b b8 g16 a
  b16 b b b b8 g16 a
  b8 g fis g
  a4 r8 d,
  d'4. b8
  a d, r b'16 c
  d e d e d8 b
  a d, r g16 a
  b b b b b8 g16 a
  b b b b b8 g16 a
  b8 g d a'
  g4 r
  \repeat volta 2 {
    fis8 \mp [ ( \melisma b ] g4 ) \melismaEnd
    %str3
    fis8 [ ( \melisma b ] g4 ) \melismaEnd
    fis8 b d b
    c a fis4
    a8 \mf [ ( \melisma d ] b4 ) \melismaEnd
    a8 d b4
    a16 \< b a b c d c d \!
    e8 \> c a \! d,
    d'4. \f b8
    a d, r b'16 c
    d e d e d8 b
    a d, r g16 a
    b b b b b8 g16 a
    b b b b b8 \dim g16 \! a
  }
  \alternative {
    {
      b8 g d a'
      g4 r
    }
    {
      b8 g d a'
      g4 r
    }
  }
  \bar "|."
}

soprantekst = \lyricmode {
  %str1
  \ml #-3.2 W_gó -- rze ty -- le \ml #-2.2 gwiazd,
  w_do -- le ty -- le \ml #-2.2 miast,
  gwia -- zdy mia -- stom da -- ją \ml #-1.2 znać, że dzie -- ci mu -- szą spać.
  Ach, śpij, ko -- cha -- nie,
  je -- śli
  %str2
  gwia -- zdki z_nie -- ba \ml #-2 chcesz_– do -- sta -- \ml #-2 niesz:
  cze -- go \ml #-2.6 prag -- \ml #-2.3 niesz, daj mi \ml #-1.2 znać,
  ja ci wszy -- stko mo -- gę dać,
  więc dla -- cze -- go nie \ml #-2 chcesz spać?
  Ach, śpij, bo no -- cą, kie -- dy gwia -- zdy się na nie -- bie zło -- cą,
  \ml #-3.2 wszy -- stkie dzie -- ci, na -- wet \ml #-0.5 złe, po -- grą -- żo -- ne są we \ml #-0.7 śnie,
  a ty je -- dna ty -- lko nie.
  A __
  %str3
  a __
  By -- ły so -- bie ko -- tki dwa,
  a __ ko -- tki dwa,
  sza -- re, bu -- re, sza -- re, bu -- re o -- by -- dwa.
  Ach, śpij, bo wła -- śnie księ -- życ zie -- wa i za \ml #-1.2 chwi -- lę za -- śnie.
  A gdy ra -- no przyj -- dzie \ml #-1.2 świt,
  księ -- ży -- co -- wi bę -- dzie \ml #-1.2 wstyd,
  że on za -- snął, a nie ty.
  za -- snął, a nie ty.
}
