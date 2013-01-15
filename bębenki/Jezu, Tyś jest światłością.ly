\version "2.15.33"
\pointAndClickOff
\header	{
  title = "Jezu, Tyś jest światłością"
  subtitle = "(ostinato)"
  composer = "muzyka: Taizé"
}
commonprops = {
  \autoBeamOff
  \tempo 4=70
  \set Score.tempoHideNote = ##t
  \key b \minor
  \time 4/4
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  b8 b4 fis8 g4 r8 e |
  a4 a8 e fis4 fis |
  d d8 d e4 d8 e |
  fis fis b b ais2 |
  % 5
  b8 b4 fis8 g4 r8 e |
  cis'4 cis8 a fis4 fis |
  d d e4 d8 e |
  fis4 b8 ais b2
  \bar "|."
}
altomelody = \relative f' {
  d8 d4 d8 e4 r8 e |
  cis4 b8 cis d4 d |
  d d8 d cis4 b8 cis |
  d d e e fis2 |
  % 5
  d8 d4 d8 e4 r8 e |
  cis4 b8 cis d4 d |
  d d e4 d8 e |
  d4 cis8 cis d2
  \bar "|."
}
tenormelody = \relative c' {
  fis,8 fis4 b8 b4 r8 g |
  e4 e8 a a4 a |
  b fis8 fis a4 a8 a |
  a a b b cis2 |
  % 5
  b8 fis4 b8 b4 r8 g |
  e4 e8 a a4 a |
  b b b b8 b |
  b4 fis8 fis fis2
  \bar "|."
}
bassmelody = \relative f {
  b,8 b4 b8 e4 r8 e |
  a,4 a8 a d4 d |
  b b8 b a4 a8 a |
  d d g g fis2 |
  % 5
  b,8 b4 b8 e4 r8 e |
  a,4 a8 a d4 d |
  g g g g8 g |
  fis4 fis8 fis b,2
  \bar "|."
}
akordy = \chordmode {
  b2:m e:m a d b:m a d4 e:m fis2
  b2:m e:m a d g e:m b4:m fis b2:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Je -- zu, Tyś jest świa --  | tło -- ścią mej du -- szy,  |
  niech cie -- mność ma nie prze --  | ma -- wia do mnie już! |
  % 5
  Je -- zu, Tyś jest świa --  | tło -- ścią mej du -- szy,  |
  daj mi moc przy -- jąć  | dziś mi -- łość Twą.
}
stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
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
    \new Lyrics \lyricsto soprano \text

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
    \new Lyrics \lyricsto alto \text

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
    \new Lyrics \lyricsto alto \text
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
