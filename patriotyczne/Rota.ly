\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Rota"
  composer = "muzyka: Feliks Nowowiejski"
  poet = "słowa: Maria Konopnicka"
}
commonprops = {
  \autoBeamOff
  \key g \minor
  \time 4/4
}
scoretempomarker = {
  \tempo 4=90
  \set Score.tempoHideNote = ##t
}
\paper {
  page-count = #1
}
#(set-global-staff-size 18)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  d,4^\p g8 a bes4 g | a fis g2 |
  d4 g8 a bes4^\< c\! | d2 c^\> |
  % 5
  f,4\! bes8 c d4 c | bes a g2 |
  g4 c8 d^\< es4 c\! | bes2 a^\> |
  % 9
  d,4^\p g8 a bes4 g | a fis g2 |
  g4^\mf g8. g16^\< c4 d\! | es2.\fermata r4 |
  d4 a8 c bes4^\> a | g2.\! r4 \bar "|."
}
altomelody = \relative f' {
  d4^\p g8 g g4 g | fis d d2 |
  d4 g8  g g4^\< f\! | f2 f^\> |
  % 5
  f4\! f8 f f4 f | d d bes2 |
  g'4 g8 g^\< g4 g\! | g2 fis^\> |
  % 9
  d4^\p g8 g g4 g | fis d d2 |
  g4^\mf g8. g16^\< g4 g\! | g2.\fermata r4 |
  fis4 fis8 fis g4^\> fis | g2.\! r4 \bar "|."
}
tenormelody = \relative c' {
  d,4^\p g8 a bes4 g | d' a bes2 |
  d,4 g8 a bes4^\< c\! | bes2 a^\> |
  % 5
  f4\! bes8 a bes4 a | g fis g2 |
  g4 c8 b^\< c4 c\! | d2 d^\> |
  % 9
  d,4^\p g8 a bes4 g | d' a bes2 |
  g4^\mf g8. g16^\< g4 b\! | c2.\fermata r4 |
  a4 a8 a d4^\> c | bes2.\! r4 \bar "|."
}
bassmelody = \relative f {
  d4^\p g8 g g4 g | d d g2 |
  d4 g8 g g4^\< a\! | bes2 f^\> |
  % 5
  f4\! d8 c bes4 f' | g d es2 |
  g4 es8 d^\< c4 es\! | d2 d^\> |
  % 9
  d4^\p g8 g g4 g | d d g2 |
  g4^\mf g8. g16^\< es4 d\! | c2.\fermata r4 |
  d4 d8 d d4^\> d | g2.\! r4 \bar "|."
}
akordy = \chordmode {
  g1:m d2 g:m g2.:m f4 bes2 f
  bes2. f4 g:m d es2 c1:m g2:m d
  g1:m d2 g:m c2.:m g4 c1:m d g:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Nie rzu -- cim zie -- mi, skąd nasz ród, nie da -- my po -- grześć mo -- wy!
  Pol -- ski my na -- ród, pol -- ski lud, kró -- lew -- ski szczep Pia -- sto -- wy.
  Nie da -- my, by nas gnę -- bił wróg... Tak nam do -- po -- móż Bóg! Tak nam do -- po -- móż Bóg!
}
stanzas = \markup {
  \fill-line {
    {
      \hspace #0.1
      \line {
        "2."
        \column	{
          "Do krwi ostatniej kropli z żył"
          "Bronić będziemy Ducha,"
          "Aż się rozpadnie w proch i pył"
          "Krzyżacka zawierucha."
          "Twierdzą nam będzie każdy próg..."
          "Tak nam dopomóż Bóg!"
        }
      }
      \hspace #0.1
      \line {
        "3."
        \column {
          "Nie będzie Niemiec pluł nam w twarz"
          "Ni dzieci nam germanił."
          "Orężny wstanie hufiec nasz,"
          "Duch będzie nam hetmanił,"
          "Pójdziem, gdy zabrzmi złoty róg..."
          "Tak nam dopomóż Bóg!"
        }
      }
      \hspace #0.1
      \line {
        "4."
        \column {
          "Nie damy miana Polski zgnieść"
          "Nie pójdziem żywo w trumnę."
          "Na Polski imię, na Jej cześć"
          "Podnosim czoła dumne,"
          "Odzyska ziemię dziadów wnuk..."
          "Tak nam dopomóż Bóg!"
        }
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
