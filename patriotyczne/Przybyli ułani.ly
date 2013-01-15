\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Przybyli ułani"
  subtitle = "na chór mieszany"
  poet = "słowa: Feliks Gwiżdż (1885-1952)"
  composer = "opracowanie: Józef Świder"
}
commonprops = {
  \autoBeamOff
  \key g \major
  \time 2/4
}
scoretempomarker = {
  \tempo 4=100
}
%--------------------------------MELODY--------------------------------
begin = {
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = 1
  R1*2/4*2
  R1*2/4*14
  }
  end = {
  R1*2/4*5 \bar "|."
}
sopranomelody = \relative c'' {
  \begin
  g8^\p g4 a8 | b b4 g8 | fis g a4 | g4 r4 |
  b8 b4 c8^\< | d d4 c8\! | b c d4 | a r |
  d8 d4 c8 | b b4 g8 | fis g a b |
  c c4 a8 | d d4 g,8 | fis g a4 | g r |
  \end
}
altomelody = \relative f' {
  \begin
  g8^\p g4 g8 | g g4 g8 | d d d4 | d r |
  g8 g4 g8^\< | g g4 g8\! | g g fis4 | fis r |
  g8 g4 g8 | g g4 e8 | d d d d |
  d d4 e8 | fis fis4 e8 | d e fis4 | g r |
  \end
}
tenormelody = \relative c' {
  \begin
  b8^\p b4 c8 | d d4 b8 | a b c4 | b r |
  d8 d4 e8^\< | fis fis4 e8\! | d e d4 | d r |
  d8 d4 d8 | d d4 c8 | c b a g |
  fis fis4 g8 | a a4 b8 | c8 b a4 | b r |
  \end
}
bassmelody = \relative f {
  \begin
  g8^\p g4 g8 | g g4 g8 | g g g4 | g r |
  g8 g4 g8^\< | g g4 g8\! | g g a4 | d, r |
  b'8 b4 a8 | g g4 g8 | a g fis e |
  d d4 d8 | d d4 d8 | d d d4 | g r |
  \end
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Przy -- by -- li | u -- ła -- ni |
  pod o -- kien -- | ko, |
  przy -- by -- li | u -- ła -- ni |
  pod o -- kien -- | ko. |
  Pu -- ka -- ją, | wo -- ła -- ją: |
  "\"Puść," pa -- nien -- "ko!\""
  Pu -- ka -- ją, | wo -- ła -- ją: |
  "\"Puść," pa -- nien -- "ko!\""
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        "2. - O Jezu! A cóż to za wojacy? - Otwieraj, nie bój się, to czwartacy!"
        "3. Przyszliśmy tu poić nasze konie, za nami piechoty pełne błonie."
        "4. - O Jezu! A dokąd Bóg prowadzi? - Warszawę odwiedzić byśmy radzi."
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
