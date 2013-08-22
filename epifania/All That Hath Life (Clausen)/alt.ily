\version "2.16.1"

% -*- master: ./pomocnicze/alt-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisywać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "altgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

altdolny = \relative f' {
  \key g \major
  \time 6/8
  g8\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  a g f g4.\<(
  bes8.--\!) bes16 bes8 a a a
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8\! r4.
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4.~
  g4 r8 r4.
  R2.

  % kartka 2.
  g8\mf fis e fis e fis
  \time 9/8
  c' b a c( b) a16( g)
  \slurDashed
  \set melismaBusyProperties = #'()
  fis4.\<(
  \time 6/8
  g\f) g \breathe
  \slurSolid
  \unset melismaBusyProperties
  g4 g8 a4 a8
  g4 g8 g b c
  d( b g) a4.
  r8 d,\p e fis( d b)
  c2.~
  c4.~ c8 r r

  % kartka 3.
  c\< c c d d d
  d\cresc d d d4. \breathe
  g8\f g g g g g
  \slurDashed
  \set melismaBusyProperties= #'()
  a g f g4.(
  bes8.--) bes16 bes8 a a a
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8--\! r r4
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4. \breathe
  g8\mf^\markup{Tutti} g g g g g

  % kartka 4.
  f g a g4. \breathe
  f8 f f e4 e8
  d4 d8 e4. \breathe
  d4 d8\> c4 c8^\markup{\italic{rit.}}
  b4 c8 b4.\(
  << { b1*10/4\) ( \fermata\p } { s4*8 s2-\tweak #'X-offset #-4 \< }>>
  c1*9/8 \fermata -\tweak #'X-offset #-4 \mp
  cis2
  d2\fermata \>
  c!2~\!
  c1*7/4\cresc
  d4 \mf~ d8\fermata )r8\fermata

  % kartka 5.
  R2.*2
  c8\mp^\markup{legato} c c g' g g^\markup{\italic{ten.}}
  \time 5/4
  g2.\> g2~
  g4\! r r r2
  R1*5/4
  r8 d4\p^\markup{sempre legato (without accents)} d8 f e c4 d
  r8 d4 d8 f e c4 d
  r8 d4 d8 f e c4 d
  r8 d4 d8 f e c4 d

  % kartka 6.
  r8 d4 d8 f e c4 d
  r8 d4 d8 f e c4 d
  r8 d4 d8 f e c4 d
  r8 d4 d8 f e c4 d
  r8 d4 d8 f e c4 d
  r r a8\pp c c4^\markup{\italic{rit.}} c~ \bar "||"
  \time 6/8
  \cadenzaOn
  c2.*1/2\p\<\laissezVibrer
  s2.\mp\<
  s4
  s4.\mf\<

  s4.
  s4.\f\<
  s4.
  s4.\ff\>

  s4
  s4.\f\>
  s4.\mf\>
  s8\mp

  % kartka 7.
  \tempo "Tempo primo"
  R2.*2
  c8\mf\< c c d d d
  d d d d d d
  g\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  a g f g4.(
  bes8.--) bes16 bes8 a a a
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8--\! r r4
  R2.
  r8 g\mf\< b d d16( c d8)
  bes4.\f g \breathe

  % kartka 8.
  r8 bes--\mf\< g r bes-- g
  r bes-- g r bes-- g
  r d' bes b4.~
  b b4\ff r8 \bar "|."
}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

altgorny = \relative f' {
  \key g \major
  \time 6/8
  \unisono{
    g8\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    a g f g4.\<(
    bes8.--\!) bes16 bes8 a a a
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8\! r r4
    R2.
    r8 g b d d16( c d8)
    bes-- f a g4.~
    g4 r8 r4.
    R2.

    % kartka 2.
    g8\mf fis e fis e fis
    \time 9/8
    c' b a c( b) a16( g)
    \slurDashed
    \set melismaBusyProperties = #'()
    fis4.\<(
    \time 6/8
    g\f) g \breathe
    \slurSolid
    \unset melismaBusyProperties
    g4 g8 a4 a8
    g4 g8 g b c
    d( b g) a4.
    r8 d,\p e fis( d b)
    c2.~
    c4.~ c8 r r

    % kartka 3.
    c\< c c d d d
    d\cresc d d d4. \breathe
    g8\f g g g g g
    \slurDashed
    \set melismaBusyProperties= #'()
    a g f g4.(
    bes8.--) bes16 bes8 a a a
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8--\! r r4
    R2.
    r8 g b d d16( c d8)
    bes-- f a g4. \breathe
    g8\mf^\markup{Tutti} g g g g g

    % kartka 4.
    f g a g4. \breathe
    f8 f f e4 e8
    d4 d8 e4. \breathe
    d4 d8\> c4 c8^\markup{\italic{rit.}}
    b4 c8 b4.~
    b1*10/4 ( \fermata\p
    c1*9/8 \fermata
    cis2
    d2\fermata
  }
  d2~
  d1*7/4
  \unisono {
    d4 \mf~ d8\fermata ) r8\fermata

    % kartka 5.
    R2.*2
    c8\mp^\markup{legato} c c g' g g^\markup{\italic{ten.}}
    \time 5/4
    g2.\> g2~
    g4\! r r r2
    R1*5/4
    r8 d4\p^\markup{sempre legato (without accents)} d8 f e c4 d
    r8 d4 d8 f e c4 d
    r8 d4 d8 f e c4 d
    r8 d4 d8 f e c4 d

    % kartka 6.
    r8 d4 d8 f e c4 d
    r8 d4 d8 f e c4 d
    r8 d4 d8 f e c4 d
    r8 d4 d8 f e c4 d
    r8 d4 d8 f e c4 d

    r r a8\pp c
  }
  d4 d~ \bar "||"
  \time 6/8
  \cadenzaOn
  d2.*1/2\p\<\laissezVibrer
  s2.\mp\<
  s4
  s4.\mf\<

  s4.
  s4.\f\<
  s4.
  s4.\ff\>

  s4
  s4.\f\>
  s4.\mf\>
  s8\mp
  \cadenzaOff

  \unisono{
    % kartka 7.
    R2.*2^\markup{Tempo primo}
    c8\mf\< c c d d d
    d d d d d d
    g\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    a g f g4.(
    bes8.--) bes16 bes8 a a a
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8--\! r r4
    R2.
    r8 g\mf\< b d d16( c d8)
    bes4.\f g \breathe

    % kartka 8.
    r8 bes--\mf\< g r bes-- g
    r bes-- g r bes-- g
    r d' bes b4.~
    b b4\ff r8 \bar "|."
  }
}


alttekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia. __

  % kartka 2.
  Sing to the Lord with thanks -- giv -- ing,
  Al -- le -- lu -- ia, \shrink #0.91 praise Him!
  \shrink #0.91 praise the Lord with joy -- ful song,
  Al -- le -- lu -- ia.
  Al -- le -- lu -- ia. __

  % kartka 3.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord.
  Shout to the Lord, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia.
  All that hath life and \shrink #0.9 breath

  % kartka 4.
  \shrink #0.91 praise ye the Lord,
  sing to the Lord
  a new- made song, % nie wiem, co z myślinikiem w tekście
  \shrink #0.91 praise His name, Al -- le -- lu -- ia.
  Mm __

  % kartka 5.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise Him.
  \shrink #0.91 Praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,

  % kartka 6.
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __

  % kartka 7.
  All that hath life and \shrink #0.9 breath,
  All that hath life and \shrink #0.9 breath
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  Shout to the Lord, al -- le -- lu --ia!
  Al -- le -- lu -- ia, __ \shrink #0.91 praise Him!

  % kartka 8.
  \shrink #0.91 Praise Him, laud Him,
  \shrink #0.91 praise Him, laud Him,
  Al -- le -- lu -- ia!
}

alt = {
  <<
    \altdolny
    \altgorny
  >>
}
