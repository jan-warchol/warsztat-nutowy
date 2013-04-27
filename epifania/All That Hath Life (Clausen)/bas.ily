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
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
  \dynamicUp
  \tupletUp
  \clef bass

  % UWAGA!
  % na razie przepisujcie tylko dolne głosy
  % (tzn. wpiszcie to, co śpiewają soprany drugie,
  % alty 2gie, tenory 2 i basy 2). Górne głosy będą później.

  % w komentarzech to, czego nie potrafię
  % w danym takcie zrealizować
  
  \key g \major
  
  \time 6/8
  
  g8\f g g g g g
  f g a g4. % crescendo, łuczek kropkowany
  es8. es16 es8 f f f
  g4 g8 r r4 % decrescendo
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4. % oddech
  g8( fis) e fis4 fis8
  e( fis) g fis4. % oddech
  
  % kartka 2.
  g2.\fp~ 
  \time 9/8
  g~ g4. % łuczek kropkowany, crescendo
  \time 6/8
  g\f g % odech
  e4 e8 b'4 b8
  c4 c8 g b c
  d( b g a4.) % decrescendo
  g2.\p
  r4. d8\mf d d
  g g g g g g % crescendo
  
  % karta 3.
  g4. g8 g g % oddech
  g g g g4 g8 % cresc
  g8\f g g g g g
  f g a g4. % łuczek kropkowany
  es8.-- es16 es8 f f f
  g4 g8-- r r4 % decrescendo
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4.~ % decrescendo
  g r
  
  % kartka 4.
  g8 g g g g g
  a a a g4 g8
  f4 f8 g4. % oddech
  f4 f8 e4 e8 % decrescendo, rit.
  d4 d8 e4. % decrescendo, p na łuczku
  % nie wiem, co zrobić z tą częścią, aż do
  % końca kartki
  
  %kartka 5.
  g8\p g g f f f % legato, crescendo
  es2. % decrescendo
  es4.~ es4 f8 % ten.
  \time 5/4
  g4 g2 r4 r4 % decrescendo
  d\p g d8 g g4 g % sempre legato (without accents)
  d g d8 g g4 g % crescendo, decrescendo
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  
  % kartka 6.
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g % decrescendo
  d g d8 g g4 g
  d8\pp g g4 g2. % rit.
  \time 6/8
  % nie wiem, co zrobić z tą częścią, aż do
  % końca kartki
  
  % kartka 7.
  r4. d8\mf d d % tempo primo
  g g g g g g
  g4.\mf g8 g g % crescendo, oddech
  g g g g4 g8
  g\f g g g g g
  f g a g4. % łuczek kropkowany
  es8.-- es16 es8 f f f
  g4 g8-- r r4 % decrescendo
  R2.
  r8 g\mf b d d16( c d8) % crescendo
  bes4.\f g % oddech
  
  % karta 8.
  bes4--\mf g8 bes4-- g8 % crescendo
  bes4-- g8 bes4-- g8
  r d' bes g4.~
  g g4\ff r8
  
}
\addlyrics {
  All that hath life and breath praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia.
  Praise __ the Lord with joy -- ful song,
  
  % kartka 2.
  praise, __ praise Him!
  praise the Lord with joy -- ful song,
  Al -- le -- lu -- ia.
  All that hath life and breath praise ye the
  
  % kartka 3.
  Lord,
  All that hath life and breath praise Him,
  All that hath life and breath praise ye the Lord.
  Shout to the Lord, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __
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
  praise Him, al -- le -- lu -- ia,
  
  % kartka 6.
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  praise Him, al -- le -- lu -- ia,
  Al -- le -- lu -- ia. __
  
  % kartka 7.
  All that hath life and breath praise ye the Lord,
  all that hath life and breath praise Him,
  All that hath life and breath praise ye the Lord,
  Shout to the Lord, al -- le -- lu --ia!
  Al -- le -- lu -- ia, __ praise Him!
  
  % kartka 8.
  Praise Him, laud Him,
  praise Him, laud Him,
  Al -- le -- lu -- ia!
}