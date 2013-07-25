\version "2.16.1"
\language "deutsch"

% -*- master: ./pomocnicze/bas-solo.ly;

bas = \relative f {
  % tonacja jest jakaś dziwna, zajmiemy się nią potem.

  % metrum:
  \time 4/4
  
  \include "globalne-muzyczne.ily"

  \repeat volta 2 {
    R1
    \bar "||"
    d8. d16~ d4 r a8 d |
    e8. cis16~ cis4 r2 |
    h8. h16~ h4 r4 e8 e |
    e8. d16~ d4 r2 |
    d8. d16~ d4 r dis8 dis |
    e8. e16~ e4 r2 |
    e8. e16~ e4 r8 e d d |
    a8. a16~ a4 r2 |
    \bar "||"
    R1
    \bar "||"
    b8. d16~ d4 r f8 des |
    c8. f16~ f4 r2 |
    g,8. g16~ g4 r4 c8 c |
    c8. c16~ c4 r2
    b8. d16~ d4 r h8 d |
    c8. c16~ c4 r2 |
    c8. c16~ c4 r8 e c c |
    f,8. f16~ f4~ f r |
  }
  \repeat volta 2 {
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup \smaller "Ostatni refren:"
    b8. d16~ d4 r f8 des |
    c8. f16~ f4 r2 |
    g,8. g16~ g4 r4 c8 c |
    c8. c16~ c4 r2 |
    b8. d16~ d4 r h8 d |
    c8. c16~ c4 r2 |
    c8. c16~ c4 r8 e c c |
    f,8. f16~ f4~ f r |
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark \markup \smaller "powtarzać do wyciszenia"
  }
}

bastekst = \lyricmode {
}
