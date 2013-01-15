\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Wielbić Pana chcę"
  subtitle = "(ostinato)"
  composer = "muzyka: Jacques Berthier, Taizé"
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 4/4
}
scoretempomarker = {
  \tempo 4=76
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  a4.^\p f8 g4. d8 | d2 r4 a'4 | d^\< d c g | << a1 { s2^\> s\!} >> |
  a4. f8 g4. d8 | d2 r4 d4 | f f e c | d2. r4
  \bar "|."
}
altomelody = \relative f'{
  f4.^\p f8 d4. d8 | d2 r4 f4 | f^\< f e e | f2(^\> e)\! |
  f4. f8 d4. d8 | d2 r4 d4 | d d c c | a2. r4
  \bar "|."
}
tenormelody = \relative c' {
  a4.^\p a8 b4. g8 | a2 r4 a4 | bes?^\< a g c | c2(^\> cis)\! |
  d4. a8 b4. g8 | a2 r4 a4 | bes? a g g | f2. r4
  \bar "|."
}
bassmelody = \relative f {
  d4.^\p d8 g4. g8 | d2 r4 d4 | bes^\< bes c c | f(^\> g a2)\! |
  d,4. d8 g4. g8 | d2 r4 d4 | bes bes c e | d2. r4
  \bar "|."
}
akordy = \chordmode {
  d2:m g d1:m bes2:maj7 c f a
  d2:m g d1:m bes2:maj7 c d1:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Wiel -- bić Pa -- na | chcę, ra -- | do -- sną śpie -- wać | pieśń! |
  Wiel -- bić Pa -- na | chcę, On | źró -- dłem ży -- cia | jest.
}
englishtext =  \lyricmode {
  \tiny {
    Bless the Lord my soul, and bless His ho -- ly Name.
    Bless the Lord my soul, He leads me in -- to life.
  }
}
stanzas = \markup {
  \column {
    \hspace #0.1
    \small
    \typewriter {
      \bold "Bless     the Lord my   soul,  and bless     His  holy   Name."
      "Błogosław Pana     moja duszo, i   błogosław Jego święte Imię."
      \hspace #0.1
      \bold "Bless     the Lord my   soul,  He leads    me   into life."
      "Błogosław Pana     moja duszo, On prowadzi mnie do   życia."
    }
  }
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
    \new Lyrics = womenenglyrics \lyricsto soprano \englishtext

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
    \new Lyrics = menenglyrics \lyricsto tenor \englishtext

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
