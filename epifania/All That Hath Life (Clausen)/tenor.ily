\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
  \dynamicUp
  \tupletUp
  \clef "treble_8"

  % UWAGA!
  % na razie przepisujcie tylko dolne głosy
  % (tzn. wpiszcie to, co śpiewają soprany drugie,
  % alty 2gie, tenory 2 i basy 2). Górne głosy będą później.

  % w komentarzach to, czego w danym takcie
  % nie potrafię zrealizować
  
  \key g \major
  \time 6/8
  
  g8\f g g b b b
  a b c b4. % łuczek kropkowany, crescendo
  bes8.-- bes16 bes8 c c c
  b4 b8 r g b % decrescendo
  d d16( c d8) f-- e c
  d2.
  f8-- e c d4. % oddech
  g,4 g8 a4 a8 g( a) b a4. % oddech
  
  % kartka 2.
  g2.\fp~
  \time 9/8
  g~ g4. % łuczek kropkowany, crescendo
  \time 6/8
  e'\f d % oddech
  b4 b8 d4 d8
  e4 e8 d b c
  d( b g a4.) % decrescendo
  g2.\p
  R2.*2
  
  % kartka 3.
  c8 c c c c c % crescendo
  c4 c8 a4 a8 % cresc
  g\f g g b b b
  a b c b4. % łuczek kropkowany
  bes8.-- bes16 bes8 c c c 
  b4 b8-- r g b % decrescendo
  d d16( c d8) f-- e c
  d2.
  f8-- e c d4.~ % decrescendo
  d r
  
  % kartka 4.
  g,8 g g d' d d
  e e e d4 d8
  c4 c8 d4. % oddech
  c4 c8 b4 b8 % decrescendo, rit.
  a4 a8 b4. % decrescendo, p na łuczku
  % nie wiem, co zrobić z tą częścią, aż do
  % końca kartki
  
  %kartka 5.
  g8\p g g d' d d % legato, crescendo
  d4. a~( % decrescendo
  a bes4) c8 % ten.
  \time 5/4
  d4 d2 r4 r % decrescendo
  R1*5/4
  a4\p b a8 b d4 b % crescendo, decrescendo, sempre legato (without accents)
  a4 b a8 b d4 b
 a4 b a8 b d4 b
 a4 b a8 b d4 b
 a4 b a8 b d4 b
 
 % kartka 6.
  a4 b a8 b d4 b
  a4 b a8 b d4 b
  a4 b a8 b d4 b
  a4 b a8 b d4 b % decrescendo
  a4 b a8 b d4 b
  r g8\pp a a4 a2 % rit.
  \time 6/8
  % nie wiem, co zrobić z tą częścią, aż do
  % końca kartki
  
  % kartka 7.
  R2.*2 % tempo primo
  c8\mf c c c c c %crescendo
  c4 c8 a4 a8
  g\f g g b b b
  a b c b4. % łuczek kropkowany
  bes8.-- bes16 bes8 c c c
  b4 b8-- r g\mf b % decrescendo
  d d16( c d8) f-- e c
  d2. % crescendo
  d4.\f b? % oddech
  
  % kartka 8.
  d4--\mf b8 d4-- b8
  d4-- b8 d4-- b8
  r d bes b4.~
  b b4\ff r8 % crescendo
  
}
\addlyrics {
  All that hath life and breath praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia!
  Al -- le -- lu -- ia.
  Praise __ the Lord with joy -- ful song,
  
  % kartka 2.
  praise, __ praise Him!
  praise the Lord with joy -- ful song,
  Al -- le -- lu -- ia.
  
  % kartka 3.
  All that hath life and breath praise Him,
  praise Him,
  All that hath life and breath praise ye the Lord.
  Shout to the Lord, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
  
  % kartka 4.
  All that hath life and breath sing to the Lord
  a new- made song, % nie wiem, co z myślinikiem w tekście
  praise his name, Al -- le -- lu -- ia.
  
  % kartka 5.
  All that hath life and breath praise Him, __
  O praise Him.
  Praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  
  % kartka 6.
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
  
  % kartka 7.
  all that hath life and breath praise Him,
  praise Him,
  All that hath life and breath praise ye the Lord,
  Shout to the Lord, al -- le -- lu --ia!
  Al -- le -- lu -- ia, __ Al -- le -- lu -- ia,
  praise Him!
  
  % kartka 8.
  Praise Him, laud Him,
  praise Him, laud Him,
  Al -- le -- lu -- ia!
  
}