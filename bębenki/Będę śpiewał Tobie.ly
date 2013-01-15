\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Będę śpiewał Tobie"
  subtitle = "(ostinato)"
  composer = "Jacek Sykulski"
}
commonprops = {
  \autoBeamOff
  \tempo 4 = 75
  \set Score.tempoHideNote = ##t
  \key e \major
  \time 3/4
  \partial 4
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  e,8 fis | gis4. gis8 a([ gis]) |
  fis2 fis8 gis |
  \time 4/4 e2 e4. e8 |
  % 4
  cis'4. cis8 cis b a cis |
  b4 b2 e,8 fis |
  gis4 gis8 gis fis([ e)] e dis |
  e4 e2 r4 \bar"|."
}
altomelody = \relative f' {
  b,8 b | b4. e8 e4 |
  dis2 dis8 dis |
  \time 4/4 cis2 cis4. e8 |
  % 4
  e4. e8 e e dis dis |
  dis4 e2 cis8 dis |
  e4 e8 dis cis4 b8 b |
  b4 b2 r4 \bar"|."
}
tenormelody = \relative c' {
  gis8 a | b4. b8 cis([ b]) |
  b2 b8 fis |
  \time 4/4 a2 gis4. e8 |
  % 4
  cis'4. cis8 a a b a |
  b4 b2 gis8 b |
  b4 b8 b a4 fis8 a |
  gis4 gis2 r4 \bar "|."
}
bassmelody = \relative f {
  e8 e | e4. e8 e4 |
  b2 b8 b |
  \time 4/4 a4( b) cis4. e8 |
  % 4
  a4. gis8 fis fis fis fis |
  gis4 gis2 cis,8 b |
  e4 e8 e cis([ a)] b b |
  e4 e2 r4 \bar "|."
}
akordy = \chordmode {
  s4 e2 a4 b2. a2 cis2:m
  a2 fis2:m7 \parenthesize gis4:m e2 cis4:m7 e2 fis4:m b4:7 e2.
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Bę -- dę | śpie -- wał To -- | bie, Mo -- cy  | mo -- ja, Ty  |
  Pa -- nie je -- steś mą na --  | dzie -- ją, To -- bie  | u -- fam i bać się nie | bę -- dę.
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
    \new Lyrics \lyricsto tenor \text

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
    \new Lyrics \lyricsto bass \text
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
