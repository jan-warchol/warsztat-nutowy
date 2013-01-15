\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Niech oblicze Twe"
  composer = "muzyka: Jacek Sykulski"
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 4/4
  \partial 4
}
scoretempomarker = {
  \tempo 4=80
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  d,8 e | f4 e d f8 g | a2.
  a8 c | d4 c4. d8 c f, | g2.
  c8 a | f4 e d e8 e | d2. r4
  \bar "|."
}
altomelody = \relative f' {
  d8 cis | d4 cis d d8 e | f2.
  f8 f | f4 f4. f8 f d | e2.
  e8 e | d4 d8[ cis] d4 d8 cis | d2. r4
  \bar"|."
}
tenormelody = \relative c' {
  a8 a | a4 a a a8 c | c2.
  c8 c | bes4 a4. bes8 c a | c2.
  c8 c | a4 a a bes8 a | a2. r4
  \bar "|."
}
bassmelody = \relative f {
  d8 a | d4 a d d8 c | f2.
  f8 a, | bes4 f'4. bes,8 a d | c2.
  a8 a | d4 a d g,8 a | d2. r4
  \bar "|."
}
akordy = \chordmode {
  d8:m a d4:m a d4.:m c8 f1
  bes4 f4. bes8 a:m d:m c2.
  a4:m d:m a d:m g8:m a d2:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Niech o --  | bli -- cze Twe, Pa -- nie | mój,
  za -- ja --  | śnie -- je nad słu -- gą  | Twym,
  niech prze -- | ni -- ka mnie Je -- go | blask.
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
