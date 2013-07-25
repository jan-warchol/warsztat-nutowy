\version "2.16.1"
\language "deutsch"

% -*- master: ./pomocnicze/sopran-solo.ly;


nieparzZwrotki = \markup \column {
  \line { \bold 1. \italic "(Wiem, że...)" }
  \line { \bold 3. \italic "(Tu od wschodu...)" }
}
parzZwrotki = \markup \column {
  \line { \bold 2. \italic "(Oto młodzież...)" }
  \line { \bold 4. \italic "(Odpowiadając...)" }
}


sopran = \relative f' {
  % tonacja jest jakaś dziwna, zajmiemy się nią potem.
 
  % metrum:
  \time 4/4
  
  \include "globalne-muzyczne.ily"
  
  \repeat volta 2 {
    
  % zwrotka 1. i 3.
  <>_\nieparzZwrotki
    R1
    \bar "||"
    % linijka 1
    fis8. a16~ a4 r4 h8 a8 |
    e8. a16~a4 r2
    d,8. fis16~ fis4 r4 e8 d8 |
    d8. e16~ e4 r2 | 
    \break
    % linijka 2
    fis8. a16~ a4 r4 h8 a8 |
    cis8 (h16) a16~ a4 r2 |
    d8. d16~ d4 r8 gis,8 gis gis |
    a8. a16~ a4 r2 |
    \bar "||"
   \break 
  % zwrotka 2. i 4.
  <>_\parzZwrotki
  R1

    %linijka 1
    d,8. f16~ f4 r4 g8 f8 |
    f8. a16~ a4 r2 |
    g8. f16~ f4 r4 e8 e8 |
    es8. es16~ es4 r2 |
    \break
    d8. f16~ f4 r4 g8 f8 |
    a8 (g16) f16~ f4 r2 |
    b8. b16~ b4 r8 e,8 e e |
    f8. f16~f4~f4 r4
    
  }
  \repeat volta 2 {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup \smaller "Ostatni refren:"
    \break  
    d'8. f16~ f4 r4 g8 f8 | 
    c8. f16~ f4 r2 |
    
    b,8. d16~ d4 r4 c8 b8 | 
    b8. c16~ c4 r2 |
    
    d8. f16~ f4 r4 g8 f8 |
    a8 (g16) f16~ f4 r2 |
    
    f8. f16~ f4 r8 e8 e e |
    f8. f16~ f4~ f4 r4 |
    
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup \smaller "powtarzać do wyciszenia"

  }
  
}

soprantekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

}
