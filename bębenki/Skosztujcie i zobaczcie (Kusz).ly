%{TODO:
  zastanowić się nad akordami - zmieniają się niemal co ósemkę...
%}

\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Skosztujcie i zobaczcie"
  subtitle = "Psalm 34"
  composer = "muzyka: ks. Stanisław Ziemiański SJ"
  arranger = "opracowanie: Dawid Kusz OP"
}
commonprops = {
  \autoBeamOff
  \key bes \major
  \time 2/4
}
scoretempomarker = {
  \tempo 4=75
  \set Score.tempoHideNote = ##t
}
\paper {
  system-count = #3
  page-count = #1
}
#(set-global-staff-size 18)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  \repeat volta 2 {
    r8 g a bes | c bes a[ bes] g4.
    g8 | f4 d8 es | f2 |
  }
  \time 3/4 f8 f g g bes g | a4 a2 |
  \time 2/4 g8 g a bes | g4 f |
  \time 3/4 bes8 bes bes bes c bes | g4 g2 |
  \time 2/4 f8 f d es | f4 f
  \bar "|."
}
altomelody = \relative f' {
  \repeat volta 2 {
    r8 d d g | a f f4 | f4( es8)
    es | d[ c] bes bes | c2 |
  }
  d8 c es es d es | f4 f2 |
  f8 es es es | es[ d] c4 |
  g'8 g g g f f | f16[ es d8] es2 |
  d8 c bes bes | c[ d] c4 |
  \bar "|."
}
tenormelody = \relative c' {
  \repeat volta 2 {
    r8 bes bes es | c c c[ bes] | c4.
    bes8 | bes4 f8 g | bes4( a) |
  }
  bes8 a bes bes bes bes | c4 d2 |
  bes8 bes bes bes | c[ bes] a4 |
  es'8 d c bes a bes | bes4 bes2 |
  bes8 a f g | c[ bes] a4 |
  \bar "|."
}
bassmelody = \relative f {
  \repeat volta 2 {
    r8 g g es | f f f16[ es d8] | es4.
    es8 | bes4 bes8 bes | f'2 |
  }
  bes,8 f' es es g g | f4 d2 |
  es8 es es d | c4 f |
  es8 es es es f d | es4 es2 |
  bes8 bes bes bes | f'4 f |
  \bar "|."
}
akordy = \chordmode {
  \repeat volta 2 {
    g2:m f es bes f
  }
  bes8 f es2 f4 d2:m
  es2 c4:m f
  es2 f8 bes es2.
  bes2 f
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Sko -- sztuj -- cie i zo -- ba -- czcie,
  jak do -- bry jest Pan.
  \set stanza = "1. "
  Bę -- dę Pa -- nu w_każ -- dej po -- rze
  śpie -- wał pieśń wdzię -- czno -- ści,
  Na mych us -- tach chwa -- ła Je -- go
  nie -- u -- stan -- nie go -- ści.
}
stanzas = \markup {
  \fill-line {
    {
      \hspace #0.1
      \column {
        "2. W Panu cała chluba moja, cieszcie się pokorni; wspólnie ze mną chwalcie Pana, sławmy Imię Jego."
        "3. Kiedym tęsknie szukał Pana, raczył mnie wysłuchać; i ze wszelkiej trwogi mojej raczył mnie wyzwolić."
        "4. Skosztujcie i zobaczcie, jaki Pan jest dobry; kto do Niego się ucieknie, ten błogosławiony."
        "5. Z czcią i lękiem służcie Panu, Święty Ludu Boży; bo nie znają niedostatku ludzie bogobojni."
      }
      \hspace #0.1
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
