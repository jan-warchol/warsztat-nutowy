\version "2.17.3"
#(set-global-staff-size 18)

\header	{
  title = "W swoim wielkim miłosierdziu"
  composer = "muzyka: Dawid Kusz OP"
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f,8[ g8] a4 g g | g8[\< a] bes[ c]\! a4 a
    d8[\f c] bes[ a] f[ g] a4 | a4 g8[ f] g4 g
  }
  g4 a bes a | f2\p f \bar "|."
}
altomelody = \relative f' {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4. f8 f[ d] e4 | d\< g\! g8[ e] f4
    f\f f c d | d d f8[ d] e4
  }
  d4 f8[ e] d4 d | f(\p e) d2 \bar "|."
}
tenormelody = \relative c' {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    a4 a c8[ d] c4 | bes\< c\! d d8[ c]
    bes4\f d a f | f g g c
  }
  bes8[ a] g[ a] f4 f8[ g] | a4.(\p g8) a2 \bar "|."
}
bassmelody = \relative f {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4 f c c | g4.\< bes16[ c]\! d4 d
    bes\f bes f'8[ e] d[ c] | bes4 b c c
  }
  g4 g bes bes | d2\p d \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  f2 c
  g2 d:m
  bes2 f4 d:m
  bes4 g c2
  g bes
  d1:m
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  W_swo -- im wiel -- kim mi -- ło -- sier -- dziu
  Bóg nas zro -- dził do na -- dzie -- i,
  do wiel -- kiej na -- dzie -- i.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \sopranomelody
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \text

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \tenormelody
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \text

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \bassmelody
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \text
  >>
  \layout {
    \autoBeamOff
    \tempo 4=90
    \set Score.tempoHideNote = ##t
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}
