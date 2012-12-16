\version "2.17.3"
#(set-global-staff-size 17.5)

\header	{
  title = "Pieśń o nadziei"
  poet = "słowa: Ps 25"
  composer = "muzyka: Dawid Kusz OP"
}

\paper {
  paper-width = 165 \mm
  paper-height = 240 \mm
  line-width = 145 \mm
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f,8[ g8] a4 g g | g8[\cresc a]\! bes[ c] a4 a
    d8[ \f c] bes[ a] f[ g] a4 | a4 g8[ f] g4 g
  }
  g4 a bes a | f2\p f 
}
altomelody = \relative f' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4. f8 f[ d] e4 | d g g8[ e] f4
    f f c d | d d f8[ d] e4
  }
  d4 f8[ e] d4 d | f( e) d2
}
tenormelody = \relative c' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    a4 a c8[ d] c4 | bes c d d8[ c]
    bes4 d a f | f g g c
  }
  bes8[ a] g[ a] f4 f8[ g] | a4.( g8) a2
}
bassmelody = \relative f {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4 f c c | g4. bes16[ c] d4 d
    bes bes f'8[ e] d[ c] | bes4 b c c
  }
  g4 g bes bes | d2 d
}
akordy = \chordmode {
  f2 c
  g2 d:m
  bes2 f4 d:m
  bes4 g c2
  g bes
  d1:m
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  W_swo -- im wiel -- kim
  mi -- ło -- sier -- dziu
  Bóg nas zro -- dził do na -- dzie -- i,
  do wiel -- kiej na -- dzie -- i.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics = sopranolyrics \lyricsto soprano \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    \autoBeamOff
  }
}
