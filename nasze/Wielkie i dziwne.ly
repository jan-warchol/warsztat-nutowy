%{TODO:
  h moll w takcie 11 dość znacznie się zmienia w trakcie taktu -
  zapisywać jako oddzielne akordy?
%}

\pointAndClickOff
\header	{
  title = "Wielkie i dziwne są dzieła Twoje"
  composer = "muzyka: ks. H. Markwica"
  arranger = "aranżacja: Łukasz Czerwiński, Jan Warchoł"
  poet = "słowa: por. Ap 15, 3-4"
}
commonprops = {
  \autoBeamOff
  \key g \major
  \time 2/4
}
scoretempomarker = {
  \tempo 4=90
  \set Score.tempoHideNote = ##t
}
\paper {
  system-count = #3
  ragged-last-bottom = ##f
}
#(set-global-staff-size 16.5)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  g4 g8 g | fis4 fis | a a8 e | g8 ([fis8]) e4 |
  b'4 b4 | a4 a | a a4 | g4 fis |
  g g8 g | d4 d | d d8 d | e4 e | \break
  % 13: Królu narodów...
  e2 | fis4. fis8 | g ([fis]) e4 ~ | e2 |
  e2 | fis4. fis8 | g ([fis]) e4 ~ | e2
  \bar "|."
}
altomelody = \relative f' {
  d4 d8 d | d4 d | e d8 c | b4 b4 |
  d4 d8 ([e]) | fis4 fis | e4. e8 | e4 d |
  d d8 d8 | a4 a | b b8 d8 | e4 e |
  % 13: Królu narodów...
  c2 | d4. d8 | e8 ([d]) e4 ~ | e2 |
  c2 | d4. d8 | e8 ([fis8]) e4 ~ | e2
  \bar "|."
}
tenormelody = \relative c' {
  b4 b8 b8 | a4 a | c4 b8 a8 | g4 g4 |
  b4 b4 | a4 a4 | a4. a8 | c4 c4 |
  r8 b b b | a4 a | r8 fis g a | g4 g |
  % 13: Królu narodów...
  r2 | a | b4. a8 | b ([a]) g4 |
  r4 b4 | a4. a8 | b8 ([a8]) g4 ~ | g2
  \bar "|."
}
bassmelody = \relative f {
  g,4 g8 g8 | d'4 d | a4 a8 c8 | e4 e4 |
  g4. g8 | d4 d4 | c4 c4 | c4 d4 |
  g a8 g | fis4 d | fis g8 fis | e4 e |
  % 13: Królu narodów...
  r2 | b2 | e4. e8 | g8 ([fis]) e4 |
  r4 c4 | b4. b8 | g'8 ([fis8]) e4 ~ | e2
  \bar "|."
}
akordy = \chordmode {
  \set majorSevenSymbol = \markup { 7+ }
  \set chordNameLowercaseMinor = ##t
  \override ParenthesesItem #'font-size = 0
  g2 d a:m e:m g d
  a:m c4 d:7 g2 d b4:m \once \override ChordName #'font-size = #-1  \parenthesize g8 \once \override ChordName #'font-size = #-1 \parenthesize d e2:m
  %Królu narodów
  c b:m7 e:m s2
  c:maj7 b:m7 e:m R
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Wiel -- kie i dziw -- ne są dzie -- ła Two -- je,
  Pa -- nie Bo -- że Wszech -- mo -- gą -- cy
  i spra -- wie -- dli -- we są dro -- gi Two -- je,
  Kró -- lu na -- ro -- dów,
  Kró -- lu na -- ro -- dów.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \line {
        "2. "
        \column	{
          "Któż by się nie bał Ciebie, o Boże,"
          "I nie uwielbił Twego Imienia,"
          "Gdyż sprawiedliwe są sądy Twoje,"
          "Królu Narodów."
        }
      }
      \hspace #0.1
      \line {
        "3. "
        \column {
          "Toteż przyjdą wszystkie narody"
          "I oddadzą Tobie pokłon,"
          "Gdyż sprawiedliwe są rządy Twoje,"
          "Królu Narodów."
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
