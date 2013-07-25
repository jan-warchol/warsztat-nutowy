\version "2.16.1"
\language "deutsch"

% -*- master: ./pomocnicze/alt-solo.ly;

alt = \relative c' {
  % tonacja jest jakaś dziwna, zajmiemy się nią potem.
 
  % metrum:
  \time 4/4
  
  \include "./globalne-muzyczne.ily"
  
  \repeat volta 2 {
    
  % zwrotka 1. i 3.
    R1
    \bar "||"
    % linijka 1
    a8. d16~ d4 r d8 f |
    cis8. e16~ e4 r2 |
    
    a,8. d16~ d4 r4 h8 h |
    h8. h16~ h4 r2 |
    
    a8. d16~ d4 r fis8 dis |
    e8. e16~ e4 r2 |
    
    fis8. fis16~ fis4 r8 d8 e e |
    cis8. cis16~ cis4 r2 |
  \bar "||"
    
  % zwrotka 2. i 4.
    R1
    
    d8. f16~ f4 r g8 f |
    c8. f16~ f4 r2 |
    b,8. d16~ d4 r4 c8 b |
    b8. c16~ c4 r2 |
    d8. f16~ f4 r g8 gis |
    f8 (g16) a16~ a4 r2 |
    f8. f16~ f4 r8 g8 g g |
    es8. es16~ es4~ es4 r4 |
  }
  \repeat volta 2 {
    d8. f16~ f4 r g8 f |
    f8. a16~ a4 r2 |
    d,8. f16~ f4 r4 e8 e |
    es8. es16~ es4 r2 |
    d8. f16~ f4 r g8 gis |
    f8 (g16) a16~ a4 r2 |
    b8. b16~ b4 r8 b8 e, e |
    es8. es16~ es4~ es4 r4 |
    
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup \smaller "powtarzać do wyciszenia"
    
  }
  
  
}

alttekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

}
