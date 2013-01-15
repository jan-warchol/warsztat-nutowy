\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Łaska Pana"
  subtitle = "(ostinato)"
  composer = "Piotr Pałka"
}
commonprops = {
  \autoBeamOff
  \key d \major
  \time 4/4
}
scoretempomarker = {
  \tempo 4=80
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \partial 8 e,8
  \repeat volta 2 {
    fis4. g8 a4 e
    d8 fis e d e2
    b'4. cis8 a4 d,
  }
  \alternative {
    { g8[( fis)] e d a'4. e8 }
    { g8[( fis)] e8. d16 d4. r8 }
  } \bar "|."
}
altomelody = \relative f' {
  \partial 8 cis8
  \repeat volta 2 {
    d4. d8 e4 d8[( cis])
    b d b b b([ cis16 d] cis4)
    e4. e8 e8[( cis)] d4
  }
  \alternative {
    { d4 b8 b cis4. cis8 }
    { d4 d8[( cis16)] cis d4. r8 }
  } \bar "|."
}
tenormelody = \relative c' {
  \partial 8 a8
  \repeat volta 2 {
    a4. b8 a4 a8([ g)]
    fis a e g g[( a16 b] cis4)
    cis4. cis8 a4 a
  }
  \alternative {
    { b8([ a)] g g e4. a8 }
    { b8([ a)] b[( a16)] a a4. r8 }
  } \bar "|."
}
bassmelody = \relative f {
  \partial 8 a,8
  \repeat volta 2 {
    d4. d8 cis4 b8([ a)]
    b a g b a2
    g'4. g8 fis4 fis
  }
  \alternative {
    { e4 e8 e a,4. a8 }
    { e'8[( fis]) g[( a16)] a d,4. r8 }
  } \bar "|."
}
akordy = \chordmode {
  a8
  \repeat volta 2 { d2 a b4:m7 e:m a2 e:m6 d }
  \alternative { { e:m a } { e4:m7 g d2 } }
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Niech nas o -- gar -- nie ła -- ska Pa -- nie Twa,
  Duch Twój Świę -- ty niech do -- tknie nas. Niech
  niech do -- tknie nas.
}
stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \scoretempomarker
    %	\new ChordNames { \germanChords \akordy }
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
    \new Lyrics = womenlyrics \lyricsto alto \text

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
    \new Lyrics = womenlyrics \lyricsto bass \text
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
