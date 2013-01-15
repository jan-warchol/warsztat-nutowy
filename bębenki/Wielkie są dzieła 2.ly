\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Wielkie są dzieła"
  subtitle = ""
  poet = "słowa: "
  composer = "muzyka: "
  arranger = "opracowanie: "
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 4/4
}
scoretempomarker = {
  \tempo 4=110
  \set Score.tempoHideNote = ##t
}
\paper {
  system-count = #3
}
#(set-global-staff-size 18)
#(ly:set-option 'debug-skylines #t)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  \repeat volta 2 {
    d,2 f4 e | d2 d |
    f4 e f g | a2 a4 a |
    bes2 a4 f | g( a) g2 |
    f4 f f g | e2 e |
  }
  d2 f8[ e] f4 | d1 |
  a'2 b8[ a] g4 | a1 |
  d2. c4 | bes8[ a] g4
  a2 ~ | a4 a f8[ e] d4 ~ | d
  d4 f8[ e] f4 | d1 ~ | d1  % czy tu nie powinno być f8[ d] e4 ?
  \bar "|."
}
altomelody = \relative f' {
  \repeat volta 2 {
    d2 d4 c | d2 d |
    a4 c c e | e2 f4 f |
    f2 f4 c | c2 e |
    f4 e d d | d( cis8[ b]) cis2
  }
  d2 d | d d |
  d2 d | d ~ d8[ e] f4 |
  f2 f | d4 d
  d4 e | f2 c2 |
  d2 d | d4( c) a2 ~ | a1
  \bar "|."
}
tenormelody = \relative c' {
  \repeat volta 2 {
    a2 bes4 g | a2 a |
    f4 g a c | c2 d4 c |
    d2 c4 a | g( a) c( bes) |
    a4 a bes g | a2 a
  }
  a2 bes | a g4( a) |
  a2 g | a8[ g] a2. |
  a2 a | g8[ a] b4
  a2 | a a4 a |
  b2 bes | a g4( a) ~ | a1
  \bar "|."
}
bassmelody = \relative f {
  \repeat volta 2 {
    d2 bes4 c | d2 d
    d4 c f c | a2 d4 c |
    bes2 f'4 f | e2 c |
    d4 c bes bes | a2 a |
  }
  d2 bes | d d |
  d2 g | d d |
  d4( e) f2 | g4 g
  d2 | d f4 f |
  g2 f | d d ~ | d1
  \bar "|."
}
akordy = \chordmode {
  d2:m bes4 c d1:m
  d4:m c f c a2:m d4:m f
  bes2 f e4:m a:m c2
  d4:m f:7 bes g:m a1:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Wiel -- kie są dzie -- ła Twej po -- tę -- gi, Pa -- nie,
  i go -- dne po -- dzi -- wu Two -- je mi -- ło -- sier -- dzie.
  Al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu -- ja.
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
    \new Lyrics = sopranolyrics \lyricsto soprano \text

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
    \new Lyrics = altolyrics \lyricsto alto \text

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
    \new Lyrics = tenorlyrics \lyricsto tenor \text

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
    \new Lyrics = basslyrics \lyricsto bass \text
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
