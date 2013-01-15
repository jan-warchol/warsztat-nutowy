\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Skosztujcie i zobaczcie"
  subtitle = "Psalm 34"
  composer = "muzyka: ks. Stanisław Ziemiański SJ"
  arranger = "opracowanie: Łukasz Czerwiński, Jan Warchoł"
}
commonprops = {
  \autoBeamOff
  \key bes \major
  \time 2/4
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
    r8 g a bes | c bes a[( bes]) | g4.
    g8 | f4 d8 es | f2
  }
  \time 5/4 f8 f g g a f g4 g |
  \time 4/4 g8 g a bes g4 f4 |
  \time 5/4 bes8 bes bes bes c bes g4 g |
  \time 4/4 g8 f d es f4 f \fermata |
  \bar "|."
}
altomelody = \relative f' {
  \repeat volta 2 {
    r8 d d d | g8 g f4 | es4.
    d8 | d[( f16 es]) d8 c | c2
  }
  d8 d bes bes d d d4 d |
  es8 es es es es4 c4 |
  d8 d d d g g es4 es |
  es8 es c c c4 c \fermata |
  \bar "|."
}
tenormelody = \relative c' {
  \repeat volta 2 {
    r8 d d d | c es d[( a]) | g4.
    bes8 | f4 f8 bes | a2
  }
  a8 a g g a a   bes4 bes |
  bes8 bes bes bes   g4 a4 |
  bes8 bes bes bes bes bes   g4 g |
  g8 g g g   bes4 a \fermata |
  \bar "|."
}
bassmelody = \relative f {
  \repeat volta 2 {
    r8 g g g | c, c d4 | es4.
    g,8 | bes4 bes8 bes | c2
  }
  d8 d bes bes d d  g,4 g |
  es'8 es es es c4 f,4 |
  bes8 bes bes bes g g  es'4 d	 |
  c8 c c c f,4 f \fermata
  \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  \repeat volta 2 {
    g2:m c4:m d:m es2
    bes f2
  }
  d4:m g:m d:m g2:m
  es2 c4:m f4
  bes2 g4:m es2
  c2:m f2
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  Skosz -- tuj -- cie i zo -- bacz -- cie,
  jak do -- bry jest Pan.
  \set stanza = "1. "
  Bę -- dę Pa -- nu w_każ -- dej po -- rze
  śpie -- wał pieśń wdzięcz -- no -- ści,
  Niech z_ust mo -- ich chwa -- ła Je -- go
  nie -- u -- stan -- nie pły -- nie.
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
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \commonprops
        \set Voice.midiInstrument = "Choir Aahs"
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
        \set Voice.midiInstrument = "Choir Aahs"
        \altomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto soprano \text

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \set Voice.midiInstrument = "Choir Aahs"
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
        \set Voice.midiInstrument = "Choir Aahs"
        \bassmelody
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \text
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
