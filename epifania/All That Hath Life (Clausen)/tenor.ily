\version "2.16.1"

% -*- master: ./pomocnicze/tenor-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisywać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "tenorgorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

tenordolny = \relative f {
  \key g \major
  \time 6/8
  % w komentarzach to, czego w danym takcie
  % nie potrafię zrealizować

  g8\f g g b b b
  \slurDashed
  \set melismaBusyProperties = #'()
  a b c b4.\<(
  bes8.--\!) bes16 bes8 c c c
  \slurSolid
  \unset melismaBusyProperties
  b4\> b8\! r g b
  d d16( c d8) f-- e c
  d2.
  f8-- e c d4.\breathe
  g,4 g8 a4 a8
  g( a) b a4.\breathe

  % kartka 2.
  g2.\fp~
  \time 9/8
  \slurDashed
  \set melismaBusyProperties = #'()
  g~ g4.\<(
  \time 6/8
  e'\f) d\breathe
  \slurSolid
  \unset melismaBusyProperties
  b4 b8 d4 d8
  e4 e8 d b c
  d( b g a4.\>)
  g2.\p
  R2.*2

  % kartka 3.
  c8\< c c c c c
  c4\cresc c8 a4 a8
  g\f g g b b b
  \slurDashed
  \set melismaBusyProperties = #'()
  a b c b4.(
  bes8.--) bes16 bes8 c c c
  \slurSolid
  \unset melismaBusyProperties
  b4\> b8--\! r g b
  d d16( c d8) f-- e c
  d2.
  f8-- e c d4.~\>
  << d{s8 s4\!}>> r4.

  % kartka 4.
  g,8 g g d' d d
  e e e d4 d8
  c4 c8 d4.\breathe
  c4 c8\> b4 b8^\markup{\italic{rit.}}
  a4 a8 b4.\(

  << { b1*10/4\)~ ( \fermata\p } { s4*8 s2\< }>>
  b1*9/8 \fermata \mp
  b2
  bes2\fermata \>
  a2~\!
  a1*7/4\cresc
  b4 \mf~ b8\fermata )r8\fermata

  %kartka 5.
  g8\p^\markup{legato} g\< g d'\! d d
  d4.\> << a~({s8\! s4}>>
  a4. bes4) c8^\markup{\italic{ten.}}
  \time 5/4
  d4 d2\> r4\! r
  R1*5/4
  a4\p\<^\markup{sempre legato (without accents)} b a8\! b d4\> b\!
  a4 b a8 b d4 b
  a4 b a8 b d4 b
  a4 b a8 b d4 b
  a4 b a8 b d4 b

  % kartka 6.
  a4 b a8 b d4 b
  a4 b a8 b d4 b
  a4 b a8 b d4 b
  a4 b a8 b d4\> b
  a4 b a8 b d4 b
  r\! g8\pp a a4 a2~^\markup{\italic{rit.}} \bar "||"
  \time 6/8
  \cadenzaOn
  a2.*1/2\p\<\laissezVibrer
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


  % kartka 7.
  \tempo "Tempo primo"
  R2.*2
  c8\mf\< c c c c c
  c4 c8 a4 a8
  g\f g g b b b
  \slurDashed
  \set melismaBusyProperties = #'()
  a b c b4.(
  bes8.--) bes16 bes8 c c c
  \slurSolid
  \unset melismaBusyProperties
  b4\> b8--\! r g\mf b
  d d16( c d8) f-- e c
  d2.\<
  d4.\f b?\breathe

  % kartka 8.
  d4--\mf\< b8 d4-- b8
  d4-- b8 d4-- b8
  r \unisono { d } bes b4.~
  b b4\ff r8 \bar "|."
}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

tenorgorny = \relative f {
  \key g \major
  \time 6/8
  \unisono {
    g8\f g g
  }
  \rownyRytm{
    d' d d
    \slurDashed
    \set melismaBusyProperties = #'()
    c d e d4.\<(
    es8.--\!) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    d4\> d8\!
  }
  \unisono{
    r g, b
    d d16( c d8) f-- e c
    d2.
    f8-- e c d4.\breathe
    g,4 g8
  }
  \rownyRytm{
    d'4 d8
    c( d) e d4.\breathe
  }

  \unisono{
    % kartka 2.
    g,2.\fp~
    \time 9/8
    \slurDashed
    \set melismaBusyProperties = #'()
    g~ g4.\<(
    \time 6/8
    e'\f) d\breathe
    \slurSolid
    \unset melismaBusyProperties
  }
  \rownyRytm{
    e4 e8 fis4 fis8
  }
  \unisono{
    e4 e8 d b c
    d( b g a4.\>)
    g2.\p
    R2.*2

    % kartka 3.
    c8\< c c c c c
    c4\cresc c8
  }
  \rownyRytm{
    c4 c8
  }
  \unisono {
    g\f g g
  } \rownyRytm {
    d' d d
    \slurDashed
    \set melismaBusyProperties = #'()
    c d e d4.(
    es8.--) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    d4\> d8--\!
  }
  \unisono{
    r g, b
    d d16( c d8) f-- e c
    d2.
    f8-- e c d4.~\>
    << d{s8 s4\!}>> r4.

    % kartka 4.
    g,8 g g d' d d
    e e e d4 d8
    c4 c8 d4.\breathe
    c4 c8\> b4 b8^\markup{\italic{rit.}}
    a4 a8 b4.\(
    b1*10/4\)~ ( \fermata\p
    b1*9/8 \fermata
    b2
    bes2\fermata
    a2~
    a1*7/4
    b4 \mf~ b8\fermata )r8\fermata

    %kartka 5.
    g8\p^\markup{legato} g\< g d'\! d d
    d4.\> << a~({s8\! s4}>>
    a4. bes4) c8^\markup{\italic{ten.}}
    \time 5/4
    d4 d2\> r4\! r
    R1*5/4
    a4\p\<^\markup{sempre legato (without accents)} b a8\! b d4\> b\!
    a4 b a8 b d4 b
    a4 b a8 b d4 b
    a4 b a8 b d4 b
    a4 b a8 b d4 b

    % kartka 6.
    a4 b a8 b d4 b
    a4 b a8 b d4 b
    a4 b a8 b d4 b
    a4 b a8 b d4\> b
    a4 b a8 b d4 b
    r\! g8\pp a a4 a2~^\markup{\italic{rit.}} \bar "||"
    \time 6/8
    \cadenzaOn
    a2.*1/2\p\<\laissezVibrer
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
    R2.*2^\markup{Tempo primo}
    c8\mf\< c c c c c
    c4 c8
  }
  \rownyRytm{
    c4 c8
  }
  \unisono {
    g\f g g
  }
  \rownyRytm {
    d' d d
    \slurDashed
    \set melismaBusyProperties = #'()
    c d e d4.(
    es8.--) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    d4\> d8--\!
  }
  \unisono{
    r g,\mf b
    d d16( c d8) f-- e c
    d2.\<
  }
  \rownyRytm{
    f4.\f d\breathe

    % kartka 8.
    f4--\mf\< d8 f4-- d8
    f4-- d8 f4-- d8
    r d f d4.~
    d d4\ff r8 \bar "|."
  }
}


tenortekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia!
  Al -- le -- lu -- ia.
  \shrink #0.91 Praise __ the Lord with joy -- ful song,

  % kartka 2.
  \shrink #0.91 praise, __ _ _ praise Him!
  \shrink #0.91 praise the Lord with joy -- ful song,
  Al -- le -- lu -- ia.

  % kartka 3.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise Him,
  \shrink #0.91 praise Him,
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord.
  Shout to the Lord, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __

  % kartka 4.
  All that hath life and \shrink #0.9 breath sing to the Lord
  a new- made song, % nie wiem, co z myślinikiem w tekście
  \shrink #0.91 praise His name, Al -- le -- lu -- ia.
  Mm __

  % kartka 5.
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise Him, __
  O \shrink #0.91 praise Him.
  \shrink #0.91 Praise Him, al -- le -- lu -- ia,
  \shrink #0.91 praise Him, al -- le -- lu -- ia,
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
  all that hath life and \shrink #0.9 breath \shrink #0.91 praise Him,
  \shrink #0.91 praise Him,
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  Shout to the Lord, al -- le -- lu --ia!
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia,
  \shrink #0.91 praise Him!

  % kartka 8.
  \shrink #0.91 Praise Him, laud Him,
  \shrink #0.91 praise Him, laud Him,
  Al -- le -- lu -- ia!
}

tenor = {
  <<
    \tenordolny
    \tenorgorny
  >>
}
