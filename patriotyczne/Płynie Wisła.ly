\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Płynie Wisła"
  subtitle = "Krakowiak"
  subsubtitle = "na chór mieszany i orkiestrę"
  poet = "słowa: Edmund Wasilewski (1814-1846)"
  composer = "opracowanie: Józef Świder"
}
commonprops = {
  \autoBeamOff
  \key a \major
  \time 2/4
}
scoretempomarker = {
  \tempo 4 = 100
}
\paper {
  page-count = #1
}
%--------------------------------MELODY--------------------------------
begin = {
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = 1
  R1*2/4
  R1*2/4*8
  R1*2/4*3
  }
  end = {
  R1*2/4*2 \bar "|."
}
sopranomelody = \relative c''{
  \repeat volta 4 {
    \begin
    a4.^\p e8 | cis' b a gis | fis a gis8. fis16 | fis8 e4 r8 |
    fis a gis8. fis16 | fis8 e4 r8 |
    e^\< d' d4\! | e8 cis4 cis8 | d b b gis | a cis4 r8 |
    e, d' d4 | e8 cis4 cis8 | d b b gis | a a4 r8 |
    R1*2/4*4
  }
  \end
}
altomelody = \relative f' {
  \repeat volta 4 {
    \begin
    a4.^\p e8 | e e e e | d d d8. d16 | d8 cis4 r8 |
    d d d8. d16 | d8 cis4 r8 |
    e^\< e e4\! | a8 a4 a8 | gis gis gis e | e a4 r8 |
    e e e4 | a8 a4 a8 | gis gis gis e | e e4 r8 |
    R1*2/4*4
  }
  \end
}
tenormelody = \relative c' {
  \repeat volta 4 {
    \begin
    a4.^\p e8 | a a a a | a a a8. a16 | a8 a4 r8 |
    a a a8. a16 | a8 a4 r8 |
    gis^\< a b4\! | cis8 e4 e8 | e e d b | cis e4 r8 |
    gis, a b4 | cis8 e4 e8 | e e e d | cis cis4 r8 |
    R1*2/4*4
  }
  \end
}
bassmelody = \relative f {
  \repeat volta 4 {
    \begin
    a4.^\p e8 | a, b cis cis |	d fis e8. d16 | a8 a4 r8 |
    d fis e8. d16 | a8 a4 r8 |
    e'^\< fis gis4\! | a8 a4 a8 | b b b e, | a a4 r8 |
    e fis gis4 | a8 a4 a8 |	e e e e | a a4 r8 |
    R1*2/4*4
  }
  \end
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Pły -- nie | Wi -- sła pły -- nie |
  po pol -- skiej kra -- | i -- nie, |
  po pol -- skiej kra -- | i -- nie. |
  Zo -- ba -- czy -- | ła Kra -- ków, |
  pew -- nie go nie | mi -- nie.
  Zo -- ba -- czy -- | ła Kra -- ków, |
  pew -- nie go nie | mi -- nie.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        "2. Zobaczyła Kraków, wnet go pokochała, a w dowód miłości wstęgą opasała."
        "3. Chociaż się schowała w Niepołomskie lasy, i do morza wpada, płynie jak przed czasy."
        "4. Płynie Wisła, płynie po polskiej krainie. A dopóki płynie, Polska nie zaginie!"
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
