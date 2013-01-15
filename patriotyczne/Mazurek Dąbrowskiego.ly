\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Mazurek Dąbrowskiego"
  subtitle = "Polski hymn narodowy"
  poet = "słowa: Józef Wybicki"
  composer = "melodia: autor nieznany"
  arranger = "harmonizacja: Kazimierz Sikorski, układ na chór: Władysław Raczkowski"
}
commonprops = {
  \autoBeamOff
  \tempo 4=116
  \key f \major
  \time 3/4
}
\paper {
  page-count = #1
  system-system-spacing #'basic-distance = #17
}
#(set-global-staff-size 18)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  a8. bes16 c4  c4 | c8. a16 d8[ c8] bes8[ a8] |
  g8. g16 c4. bes8 | bes4 a4 r4 |
  a8. bes16 c4  c4 | c8. a16 d8[ c8] bes8[ a8] |
  g8. g16 c4. e,8 | g4 f4 r4 |
  \repeat volta 2 {
    g4^\markup { \italic refren } g4. bes8 | bes8[ a8] a2 |
    bes8. bes16 bes4 bes8 d8 | d4 c2 |
    a8 c8 f4. e8 | e8[ d8] d2 |
    c8 c8 bes4. e,8 | g4 f4 r4
  }
}
altomelody = \relative f' {
  f8. f16 f4 e4 | f8. a16 f4 g4 |
  f8. f16 e8[ f8 g8] g8 | g4 f4 r4 |
  f8. f16 f4 e4 | f8. a16 f4 g4 |
  f8. f16 e8[ d8 c8] c8 | c4 c4 r4 |
  \repeat volta 2 {
    e4 e8[ f8 g8] e8 | f4 f2 |
    f8. f16 f4 f8 bes8 | bes8[ a8] a2 |
    a4. bes8 c8 c8 | c4 bes2 |
    c8 c8 g4. e8 | e4 c4 r4
  }
}
tenormelody = \relative c' {
  c8. c16 c4 g4 | a8. c16 f8[ e8] d8[ c8] |
  c8. c16 g4. c8 | c4 c4 r4 |
  c8. c16 c4 g4 | a8. c16 f8[ e8] d8[ c8] |
  c8. c16 c4. bes8 | bes4 a4 r4 |
  \repeat volta 2 {
    c4 c4. c8 | d8[ c8] c2 |
    d8. d16 d4 d8 f8 | 	f4 f2 |
    c8 c8 c4. f8 | f4 f2 |
    c8 c8 f8[ e8 d8] c8 | bes4 a4 r4
  }
}
bassmelody = \relative f {
  f8. g16 a4 c,4 | f8. f16
  <<
    {
      % alternatywna oktawa
      \voiceTwo
      \set fontSize = #-2
      a4 bes c8.
      \unset fontSize
    }
    \new Voice {
      \voiceOne
      a,4 bes c8.
    }
  >>
  \oneVoice
  c16 c8[ d8 e8] e8 | f4 f4 r4 |
  f8. g16 a4 c,4 | f8. f16
  <<
    {
      % alternatywna oktawa
      \voiceTwo
      \set fontSize = #-2
      a4 bes c8.
      \unset fontSize
    }
    \new Voice {
      \voiceOne
      a,4 bes c8.
    }
  >>
  \oneVoice
  c16 c4. c8 | f4 f4 r4 |
  \repeat volta 2 {
    c4 c4. c8 | f4 f2 |
    bes8. bes16 bes4 d8 bes8 | f4 f2 |
    f4. g8 a8 a8 | bes4 bes2 |
    c8 c8 c,4. c8 | f4 f4 r4
  }
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "       % pierwsza zwrotka i refren
  Je -- szcze Po -- ska |	nie zgi -- nę -- ła, |
  kie -- dy my ży -- | je -- my. |
  Co nam ob -- ca | prze -- moc wzię -- ła, |
  sza -- blą od -- bie -- | rze -- my. |
  % refren
  Marsz, marsz, Dą -- | bro -- wski, |
  z_zie -- mi wło -- skiej do | Pol -- ski. |
  Za two -- im prze -- | wo -- dem |
  złą -- czym się z_na -- | ro -- dem.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \line {
        "2. "
        \column	{
          "Przejdziem Wisłę, przejdziem Wartę,"
          "Będziem Polakami."
          "Dał nam przykład Bonaparte,"
          "Jak zwyciężać mamy."
        }
      }
      \hspace #0.1
      \line {
        "3. "
        \column {
          "Jak Czarniecki do Poznania"
          "Po szwedzkim zaborze,"
          "Dla ojczyzny ratowania"
          "Wrócim się przez morze."
        }
      }
      \hspace #0.1
      \line {
        "4. "
        \column {
          "Już tam ojciec do swej Basi"
          "Mówi zapłakany —"
          "Słuchaj jeno, pono nasi"
          "Biją w tarabany."
        }
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
