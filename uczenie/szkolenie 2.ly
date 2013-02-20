%{ wiązania w muzyce wokalnej
   chorągiewki odpowiadające wiązaniom
   łuki, ich różne znaczenia (tie vs slur, legato, portamento) i powiązanie z tekstem
%}

#(set-global-staff-size 16)
\paper {
  paper-width = 10 \cm
  paper-height = 7.5 \cm
  indent = 0
  oddHeaderMarkup = ""
  evenHeaderMarkup = ""
}

\markup "ile tu jest szesnastek?"
\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  \autoBeamOff
  a16 a a a a a a a a a a a a a
}

\pageBreak

\markup "ile tu jest szesnastek?"
\new Staff \with { \remove Time_signature_engraver } \relative c'' {
  a16 a a a a a a a a a a a a a
}

\pageBreak
\new Staff \relative c'' {
  \time 4/4
  a8[ a] a[ a] a[ a] a[ a]
}
\new Staff \relative c'' {
  \time 4/4
  a8 a a a a a a a
}

\new Staff \relative c'' {
  \time 3/4
  a8[ a] a[ a] a[ a]
}
\new Staff \relative c'' {
  \time 3/4
  a8 a a a a a
}

\pageBreak
\new Staff \relative c'' {
  \time 8/8
  a8 a a a a a a a
}
\new Staff \relative c'' {
  \time 5/8
  a8 a a a a
}
\new Staff \relative c'' {
  \time 5/8
  a8[ a] a[ a a]
}


\pageBreak
\new Staff \relative c'' {
  \time 4/4
  a8 a8 a4. r8 a8. a16 a2
}
\new Staff \relative c'' {
  \time 4/4
  a8 a8 a4~ a8 r8 a8. a16 a2
}

\new Staff \relative c'' {
  \time 4/4
  a4 a2*1/2 s a4
}
\new Staff \relative c'' {
  \time 4/4
  a8 a4 a4 a4 a8
}
\pageBreak

{ g'8 g' f'16 g' a' b' }

{ a'8 g'16 a' e'4 f'16 e' d'8 c'4 }

{ f'8 r f' f' f'[ r f' f' ] }

\pageBreak

\new Staff \relative c' {
  \key g \minor
  \partial 8
  \autoBeamOff
  d8 g8. [ bes16] as8. c16 bes8.[ g16 fis8.] a16
}
\addlyrics { that tak -- eth a -- way the sin, the sin }

\new Staff \relative f' {
  \time 2/4 \key bes \major
  \autoBeamOff
  \times 4/5 { f8  g16 f es  } f4 ~ |
  f4. f8 |
  bes8  c16 bes  \times 4/5 { a8  bes16 a g  }
  g16  f f8  ~ f4 ~
  f4. f8
  bes8.  c32 bes  a8.  bes32 a
  g2
}
\pageBreak


\new Staff { f'4( g' a') }

\new Staff { d'4~ d'( f') }

\new Staff { d'4~ ( d' f') }
