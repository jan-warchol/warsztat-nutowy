\version "2.16.1"

% funkcje pomocnicze:

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \oneVoice
     \new Voice {
       \override NoteColumn #'ignore-collision = ##t
       \hideNotes
       \oneVoice
       \override Hairpin #'stencil = ##f
       \override DynamicText #'stencil = ##f
       \override DynamicTextSpanner #'stencil = ##f
       \override Slur #'stencil = ##f
       \override PhrasingSlur #'stencil = ##f
       #music
     }
   #})

rownyRytm =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \unHideNotes
     \oneVoice
     #music
   #})

podzial =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \voiceTwo
     \new Voice  {
       \voiceOne
       \override Hairpin #'stencil = ##f
       \override DynamicText #'stencil = ##f
       \override DynamicTextSpanner #'stencil = ##f
       #music
     }
   #})

basII = \relative f {

  % w komentarzech to, czego nie potrafię
  % w danym takcie zrealizować
  
  g8\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  f g a g4.\<( 
  es8.\!) es16 es8 f f f
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8\! r r4
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4.\breathe
  g8( fis) e fis4 fis8
  e( fis) g fis4.\breathe
  
  % kartka 2.
  g2.\fp~ 
  \time 9/8
  \slurDashed
  \set melismaBusyProperties = #'()
  g~ g4.\<(
  \time 6/8
  g\f) g\breathe
  \unset melismaBusyProperties
  \slurSolid
  e4 e8 b'4 b8
  c4 c8 g b c
  d( b g a4.\>)
  g2.\p
  r4. d8\mf d d
  g\< g g g g g\!
  
  % karta 3.
  g4.\breathe g8 g g
  g\cresc g g g4 g8
  g8\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  f g a g4.(
  es8.--) es16 es8 f f f
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8--\! r r4
  R2.
  r8 g b d d16( c d8)
  bes-- f a g4.~\>
  << g{s8 s4\!}>> r4.
  
  % kartka 4.
  g8 g g g g g
  a a a g4 g8
  f4 f8 g4.\breathe
  f4 f8\> e4 e8^\markup{\italic{rit.}}
  d4 d8 e4.
  e2.\fermata\p
  % nie wiem, co zrobić z tą częścią, aż do
  % końca kartki
  
  %kartka 5.
  g8\p^\markup{legato} g\< g f\! f f
  es2.\>
  es4.\!~ es4 f8^\markup{\italic{ten.}}
  \time 5/4
  g4 g2\> r4\! r4
  d\p^\markup{sempre legato (without accents)} g d8 g g4 g
  d\< g d8\! g g4\> g\!
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  
  % kartka 6.
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4 g
  d g d8 g g4\> g
  d g d8 g g4 g
  d8\pp g g4 g2.^\markup{\italic{rit.}} \bar "||"
  \time 6/8
  % nie wiem, co zrobić z tą częścią, aż do
  % końca kartki
  
  % kartka 7.
  r4.^\markup{tempo primo} d8\mf d d
  g g g g g g
  g4.\mf\<\breathe g8 g g
  g g g g4 g8
  g\f g g g g g
  \slurDashed
  \set melismaBusyProperties = #'()
  f g a g4.(
  es8.--) es16 es8 f f f
  \slurSolid
  \unset melismaBusyProperties
  g4\> g8--\! r r4
  R2.
  r8 g\mf\< b d d16( c d8)
  bes4.\f g\breathe
  
  % karta 8.
  bes4--\mf\< g8 bes4-- g8
  bes4-- g8 bes4-- g8
  r d' bes g4.~
  g g4\ff r8 \bar "|."
  }
  
basI = \relative f {
  \unisono{
    g8\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    f g a g4.\<( 
    es8.\!) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8\! r r4
    R2.
    r8 g b d d16( c d8)
    bes-- f a g4.\breathe
    g8( fis) e fis4 fis8
    e( fis) g fis4.\breathe
    
    % kartka 2.
    g2.\fp~ 
    \time 9/8
    \slurDashed
    \set melismaBusyProperties = #'()
    g~ g4.\<(
    \time 6/8
    g\f) g\breathe
    \unset melismaBusyProperties
    \slurSolid
    e4 e8 b'4 b8
    c4 c8 g b c
    d( b g a4.\>)
    g2.\p
  }
  \rownyRytm{
    r4. d8\mf d d
    g\< g g a a a\!
    
    % karta 3.
    a4.\breathe a8 a a
    a\cresc a a a4 a8
  }
  \unisono{
    g8\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    f g a g4.(
    es8.--) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8--\! r r4
    R2.
    r8 g b d d16( c d8)
    bes-- f a g4.~\>
    << g{s8 s4\!}>> r4.
    
    % kartka 4.
    g8 g g g g g
    a a a g4 g8
    f4 f8 g4.\breathe
    f4 f8\> e4 e8^\markup{\italic{rit.}}
    d4 d8 e4.
    e2.\fermata\p
    % nie wiem, co zrobić z tą częścią, aż do
    % końca kartki
    
    %kartka 5.
    g8\p^\markup{legato} g\< g f\! f f
    es2.\>
    es4.\!~ es4 f8^\markup{\italic{ten.}}
    \time 5/4
    g4 g2\> r4\! r4
  }
  \rownyRytm{
    d\p^\markup{sempre legato (without accents)} g d8 g a4 b
    d,\< g d8\! g a4\> b\!
    d, g d8 g a4 b
    d, g d8 g a4 b
    d, g d8 g a4 b
    d, g d8 g a4 b
    
    % kartka 6.
    d, g d8 g a4 b
    d, g d8 g a4 b
    d, g d8 g a4 b
    d, g d8 g a4\> b
    d, g d8 g a4 b
    d,8\pp g g4 g2.^\markup{\italic{rit.}} \bar "||"
    \time 6/8
    % nie wiem, co zrobić z tą częścią, aż do
    % końca kartki
    
    % kartka 7.
    r4.^\markup{tempo primo} d8\mf d d
    g g g a a a
    a4.\mf\<\breathe a8 a a
    a a a a4 a8
  }
  \unisono{
    g\f g g g g g
    \slurDashed
    \set melismaBusyProperties = #'()
    f g a g4.(
    es8.--) es16 es8 f f f
    \slurSolid
    \unset melismaBusyProperties
    g4\> g8--\! r r4
    R2.
    r8 g\mf\< b d d16( c d8)
    bes4.\f g\breathe
    
    % karta 8.
    bes4--\mf\< g8 bes4-- g8
    bes4-- g8 bes4-- g8
    r d' bes g4.~
    g g4\ff r8 \bar "|."
  }
}
  
\new Staff \with { \consists "Ambitus_engraver" } {
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
  
  \key g \major
  \time 6/8
  <<
    \basI
    \basII
  >>
}
  
\addlyrics {
  All that hath life and breath praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia.
  Praise the Lord with joy -- ful song,
  
  % kartka 2.
  praise, __ _ _ praise Him!
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
  praise his name, Al -- le -- lu -- ia. Mm
  
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