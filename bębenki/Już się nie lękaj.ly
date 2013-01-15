\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Już się nie lękaj"
  composer = "muzyka: Taizé"
}
commonprops = {
  \autoBeamOff
  \key a \minor
  \time 4/4
}
scoretempomarker = {
  \tempo 4=80
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  e,8^\p e4 g8 f4 f | d8 d4 f8 e4 e |
  a8^\mf a a4 b b | b8 b4 b8 c4 c |
  % 5
  e,8^\p e4 g8 f4 f | d8 d4 f8 e4 e |
  a^\f a b2 | gis a \bar "|."
}
altomelody = \relative f' {
  c8^\p c4 c8 c4 c | b8 b4 b8 b4 b |
  a8^\mf a c4 b b | e8 e4 e8 e4 e |
  % 5
  c8^\p c4 c8 c4 c | b8 b4 b8 b4 b |
  c4^\f c b2 | b c \bar "|."
}
tenormelody = \relative c' {
  a8^\p a4 a8 a4 a | g8 g4 g8 g4 g |
  f8^\mf f f4 f f | a8 a4 gis8 a4 a |
  % 5
  a8^\p a4 a8 a4 a | g8 g4 g8 g4 g |
  f^\f f f2 | e e \bar "|."
}
bassmelody = \relative f {
  a,8^\p a4 a8 d4 d | g,8 g4 g8 c4 c |
  f8^\mf f f4 d d | e8 e4 e8 a,4 a |
  % 5
  a8^\p a4 a8 d4 d | g,8 g4 g8 c4 c |
  f^\f f d2 | e a, \bar "|."
}
akordy = \chordmode {
  a2:m d:m7 g c:maj7
  f b:dim e:sus4 a:m
  a2:m d:m7 g c:maj7
  f b:dim e a:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Już się nie lę -- kaj, po -- rzuć zmar -- twie -- nia,
  Bo -- gu za -- u -- faj, nic ci nie gro -- zi.
  Już się nie lę -- kaj, po -- rzuć zmar -- twie -- nia,
  Bóg mi -- ło -- ścią jest.
}
stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \scoretempomarker
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \text

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \fourstaveschoir
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      \remove "Dynamic_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \fourstaveschoir
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
