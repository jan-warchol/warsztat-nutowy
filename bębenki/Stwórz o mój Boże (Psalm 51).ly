\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Stwórz, o mój Boże"
  subtitle = "Psalm 51"
  subsubtitle = "Noc Miłosierdzia, AD 1997"
  poet = "słowa: por. Ps 51 (50), 3-4.12-15"
  composer = "muzyka: Jacek Sykulski"
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 2/2
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}
#(set-global-staff-size 18)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \repeat volta 2 {
    d,2 e4 f | a( g) e2 |
    f g4 a | c( bes) g2 |
    bes4 a f d | e2 e4 e
    f2 f | g f4 g | e1 | e
  }
  \cadenzaOn
  f\breve f8 d f4 f2 \cadenzaOff \bar"|"
  \cadenzaOn
  f\breve f8 d e4 e2 \cadenzaOff \bar"|"
  \cadenzaOn
  e\breve e8 c d4 d2 \cadenzaOff \bar"|"
  \cadenzaOn
  d\breve e8 d e4 e2 \cadenzaOff \bar"|"
}
altomelody = \relative f' {
  \repeat volta 2 {
    d2 d4 d | d2 d4( c) |
    d2 c4 c | f2 f4( e) |
    c c c bes | a2 a4 a |
    a2 d4( c) | d2 d4 d | c4( d2 c4) | cis1
  }
  d\breve d8 d d4 d2 |
  c\breve c8 c c4 c2 |
  c\breve c8 c c4 bes2 |
  bes\breve bes8 bes c( d) cis2 |
}
tenormelody = \relative c' {
  \repeat volta 2 {
    a2 g4 a | bes2 a |
    a g4 f | f( bes) c2 |
    c4 c f, f | e2 e4 e |
    d( f) a2 | bes a4 a | g1 | a
  }
  a\breve a8 a bes4 bes2 |
  a\breve a8 a g4 g2 |
  a\breve a8 g f4 f2 |
  g\breve g8 g g4 a2 |
}
bassmelody = \relative f {
  \repeat volta 2 {
    d2 d4 d | g,2 a |
    d e4 f | d2 c |
    f4 f d d | cis( b) a a |
    d2 c | bes bes4 bes | c2( bes) |a1
  }
  d\breve d8 d bes4 bes2 |
  f'\breve f8 f c4 c2 |
  a\breve a8 a bes4 bes2 |
  g\breve g8 g c4 a2 |
}
akordy = \chordmode {
  d1:m g:m d:m d:m7
  f2 d2:m
  a1 d2:m f2
  g1:m c2 c2:7
  a1
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  Stwórz o mój Bo -- że, stwórz o mój Bo -- że, we mnie ser -- ce czy -- ste i od -- nów we mnie moc Du -- cha.
  \set stanza = "1. "
  \once \override LyricText #'self-alignment-X = #LEFT "Zmiłuj się nade mną, Boże, w łaska" -- wo -- ści Swo -- jej,
  \once \override LyricText #'self-alignment-X = #LEFT "w ogromie Swej litości zgładź mo" -- ją nie -- pra -- wość.
  \once \override LyricText #'self-alignment-X = #LEFT "Obmyj mnie zupenie" z_mo -- jej wi -- ny,
  \once \override LyricText #'self-alignment-X = #LEFT "i oczyść mnie z grze" -- chu mo -- je -- go.
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Stwórz, o Boże, we mnie serce czyste, i odnów we mnie moc Ducha."
            "Nie odrzucaj mnie od swojego oblicza, i nie odbieraj mi Świętego Ducha Swego."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Przywróć mi radość z Twojego zbawienia, i wzmocnij mnie duchem ofiarnym."
            "Będę nieprawych nauczał dróg Twoich, i wrócą do Ciebie grzesznicy."
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
