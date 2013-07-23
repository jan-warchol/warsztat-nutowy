\version "2.17.21"
% 72 minuty. AAAARGH!!

discant = \markup {
  \musicglyph #"accordion.discant"
}
dot = \markup {
  \musicglyph #"accordion.dot"
}

accBasson = ^\markup {
  \combine
  \discant
  \translate-scaled #'(0 . 0.5) \dot
}

\header {
  title = "Od dźwięku a"
  composer = "Radosław Kujawa"
}

global = {
  \time 2/2
  \tempo 4 = 84
}

violinnotes = \relative f' {
  f4\ff \glissando a,2.~
  a1~
  a1~
  << a1~ { s4 s2\> s8 s\mp } >> 
  a4 a \tuplet 3/2 { a a a }
  \override Beam.grow-direction = #RIGHT
  \scaleDurations 64/17
  \featherDurations #(ly:make-moment 1/2)
  { a32[ \repeat unfold 15 { a } a] }
  a1:32^"tremol. irregol."
  a1:32
  << a1:32 { s4 s2 \< s8 s \mf } >>
  a1:32 \spp
  a1:32
  a1:32
  a1:32
}

clarinetnotes = \relative f' {
  \tuplet 5/4 { g16 ( \ff fis e d c ) } b2.~
  b1\>
  b4\mp \glissando 
  \tuplet 3/2 { ais4 \glissando b \glissando ais \glissando }
  b8 \glissando a \glissando
  \override Beam.grow-direction = #RIGHT
  \scaleDurations 64/12
  \featherDurations #(ly:make-moment 2/3) {
    b32[ \glissando a32 \glissando
    b32 \glissando a32 \glissando
    b32 a32
    b32 a32
    b32 a32
    b32 a32]
  }
  \revert Beam.grow-direction
  \repeat unfold 2 {
    \repeat tremolo 16 { b32 ( ais }
    b4 ) r4 \repeat tremolo 8 { b32 ( ais } 
    \repeat tremolo 8 { b32 ais } b4) r4
  }
  \repeat tremolo 16 { b32 ( ais }
  \repeat tremolo 4 { b32 ais } b4) r4
  \repeat tremolo 4 { b32 ( ais } |
  \repeat tremolo 12 { b32 ais } b4 )
  
}

accupnotes = \relative f' {
  \tuplet 5/4 { f16\accBasson ( e d c bes ) } a2.~
  \repeat unfold 13 { a1~ } 
}

accdynamics = {
  s1\ff
  s1
  s2 s2\>
  s2. s4\pp
  \override TextSpanner.bound-details.left.text =
  "wibr irregol."
  \override TextSpanner.style = #'trill
  s2 s2\startTextSpan
  s1*8 s1\stopTextSpan
}

accdownnotes = \relative f {
  \clef F 
  \tuplet 5/4 { f16 ( e d c bes ) } a2.~
  \repeat unfold 13 { a1~ } 
}

bassnotes = \relative f, {
  \clef "F_8"
  f4\ff \glissando a,2. ~
  a1~
  << a1~ { s2 s\> } >>
  << a1~ { s2.. s8\pp } >>
  a1~
  a1~
  a1~
  a1~
  a1~
  a2 r2
  f'1\mf
  e
  d
  c
}
