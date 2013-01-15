\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Pan blisko jest"
  subtitle = "(ostinato)"
  arranger = "opracowanie: Taize"
}
commonprops = {
  \autoBeamOff
  \key e \minor
  \time 2/2
}
scoretempomarker = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
}
#(set-global-staff-size 20)
\paper {
  line-width = 176
  top-markup-spacing #'basic-distance = 12
  system-system-spacing #'basic-distance = 18
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  g2 g4. e8 |
  g2 r4 g |
  fis2 fis |
  fis2. r4 | \break
  g2 a4. a8 |
  b2 r4 b |
  c2 b |
  e,2. r4
  \bar ":|"
}
altomelody = \relative f' {
  e2 e4. e8 |
  e2 r4 e |
  e2 e |
  dis2. r4 |
  e2 fis4. fis8 |
  g2 r4 g |
  e2 dis |
  e2. r4
}
tenormelody = \relative c' {
  b2 b4. b8 c2 r4 c c2 c b2. r4 |
  b2 d4. d8 d2 r4 g, a( g) fis2 g2. r4
}
bassmelody = \relative f {
  e2 e4. e8 c2 r4 c a2 a b2. r4 |
  e2 d4. d8 g2 r4 e a,2 b e2. r4
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Pan bli -- sko jest, o -- cze -- kuj Go.
  Pan bli -- sko jest, w_Nim ser -- ca moc.
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
