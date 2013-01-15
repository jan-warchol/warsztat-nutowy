%{TODO:
  sprawdzić akordy, szczególnie takt 7
%}

\header	{
  title = "Pójdźmy wszyscy do stajenki"
  arranger = "opracowanie: Wojciech Szaliński"
}
commonprops = {
  \autoBeamOff
  \key g \major
  \time 4/4
  \tempo 4=130
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  d,4 e d e | d4. g8 b4 g | d e d e | d4. g8 b4 g |
  \repeat volta 2 {
    c4. b8 a4 a | b4. a8 g4 g | fis fis e fis |
  }
  \alternative{
    { g4. a8 b4 b }
    { g4. a8 g4 g }
  } \bar "|."
}
altomelody = \relative f' {
  b,4 c b c | b4. d8 g4 d | b c b c | b4. d8 g4 d |
  \repeat volta 2 {
    g4. fis8 e4 e | fis4. e8 d4 d | d d cis c |
  }
  \alternative {
    { b4. d8 g4 g }
    { b,4. c8 b4 b }
  } \bar "|."
}
tenormelody = \relative c' {
  g4 g g g | g4. b8 d4 b | g g g g | g4. b8 d4 b |
  \repeat volta 2 {
    e4. d8 c4 c | d4. c8 b4 b | a a a a |
  }
  \alternative {
    { g g d' d}
    { g, g g g}
  } \bar "|."
}
bassmelody = \relative f {
  g4 g g g | g4. g8 g4 g | g g g g | g4. g8 g4 g |
  \repeat volta 2 {
    d4 e8->[ fis->] g4 fis8[-> e]-> | d4 e8->[ fis->] g4 g | a a g8[( fis]) e([ d)] |
  }
  \alternative {
    { g4 g g g}
    { g g g, g}
  } \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  g4 c g c g1
  g4 c g c g1
  \repeat volta 2 {
    c2 a:m b:m g d1
  }
  \alternative { { g1 } { g } }
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Pój -- dźmy wszy -- scy do sta -- jen -- ki, do Je -- zu -- sa i Pa -- nie -- nki,
  po -- wi -- taj -- my Ma -- leń -- kie -- go i Ma -- ry -- ję, Ma -- tkę Je -- go,
  Ma -- tkę Je -- go.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Witaj, Jezu ukochany, od patriarchów czekany,"
            "Od proroków ogłoszony, od narodów upragniony!"
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Witaj, Dziecineczko w żłobie, wyznajemy Boga w Tobie,"
            "Coś się narodził tej nocy, byś nas wyrwał z czarta mocy!"
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Witaj, Jezu nam zjawiony, witaj, dwakroć narodzony,"
            "Raz z Ojca przed wieków wiekiem, a teraz z Matki człowiekiem."
          }
        }
        \hspace #0.1
        \line {
          "5. "
          \column {
            "Któż to słyszał takie dziwy, Tyś człowiek i Bóg prawdziwy,"
            "Ty łączysz w Boskiej Osobie dwie natury różne sobie."

          }
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
    \new Lyrics = womenlyrics \lyricsto soprano \text


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
    \new Lyrics = menlyrics \lyricsto bass \text

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
