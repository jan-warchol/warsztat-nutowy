\version "2.12.3"
\pointAndClickOff
\header	{
  title = "O Pani, ufność nasza"
  subtitle = "(ostinato)"
  composer = "muzyka: Jacek Gałuszka OP"
}
commonprops = {
  \autoBeamOff
  \key es \major
  \time 3/4
  \partial 4
}
scoretempomarker = {
  \tempo 4=90
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  es,4 | bes' bes c8 as | bes4 bes as | g g8[ f] g as | f4 f
  g | es2 bes'8[ f] | g2 as4 | g as8 g f4 | es2 r4
  \bar "|."
}
altomelody = \relative f' {
  bes,4 | g' g as8 f | g4 g f | es es es8 es | d4 d
  d | c2 d4 | es2 es8[ f] | es4 es8 es es[ d] | bes2 r4
  \bar "|."
}
tenormelody = \relative c' {
  g4 | bes bes bes8 bes | bes4 bes c | bes bes bes8 bes | bes4 bes
  b | g2 bes4 | bes2 c8[ d] | bes4 c8 c bes4 | g2 r4
  \bar "|."
}
bassmelody = \relative f {
  es4 | es es es8 es | es4 es es | es es es8 es | bes4 bes
  g | c2 bes4 | es2 as,8[ bes] | es4 as,8 as bes4 | es2 r4
  \bar "|."
}
akordy = \chordmode {
  s4 es2 es4:sus4 es2 f4:m7 es2. bes2
  g4  c2:m bes4 es2 as4 es as bes es2
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  O Pa -- ni, u -- fność na -- sza w_mo -- dli -- twy Twej o -- bro -- nie,
  chroń nas, chroń nas, Kró -- lo -- wo Po -- ko -- ju!
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
