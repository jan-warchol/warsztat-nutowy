\version "2.16.1"
\language "deutsch"

% -*- master: ./pomocnicze/tenor-solo.ly;

tenor = \relative f {
  % tonacja jest jakaś dziwna, zajmiemy się nią potem.

  % metrum:
  \time 4/4
  
  \include "globalne-muzyczne.ily"
 
  \repeat volta 2 {
    R1
    \bar "||"
    fis8. fis16~ fis4 r f8 a
    a8. a16~ a4 r2
    fis8. a16~ a4 r gis8 gis
    g!8. g16~ g4 r2
    fis8. fis16~ fis4 r a8 c
    a8 (h16) cis16~ cis4 r2
    a8. a16~ a4 r8 h gis gis
    e8. e16~ e4 r2
    \bar "||"
    R1
    \bar "||"
    f8. b16~ b4 r des8 b
    a8. c16~ c4 r2
    b8. b16~ b4 r b8 g
    es8. es16~ es4 r2
    f8. b16~ b4 r d8 h
    a8. c16~ c4 r2
    b8. b16~ b4 r8 c b b
    b8. b16~( b4 a4) r4
  }
  \repeat volta 2 {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup \smaller "Ostatni refren:"
    f8. b16~ b4 r des8 b
    a8. c16~ c4 r2
    b8. b16~ b4 r b8 b
    b8. b16~ b4 r2
    f8. b16~ b4 r d8 h
    a8. c16~ c4 r2
    b8. b16~ b4 r8 c b b
    b8. b16~ (b4 a4) r4
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup \smaller "powtarzać do wyciszenia"
  }
}

tenortekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

}
