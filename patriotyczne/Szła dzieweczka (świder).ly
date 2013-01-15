\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Szła dzieweczka do laseczka"
  subtitle = "na chór mieszany"
  arranger = "opracowanie: Józef Świder"
}
commonprops = {
  \autoBeamOff
  \key a \major
  \time 3/4
}
scoretempomarker = {
  \tempo 4=164
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \repeat volta 2 {
    e,2^\markup { \italic zwrotka } a4 | cis2 b4 | a2 fis4 | a4( gis) fis |
    e2 e4 | cis2 d4 | e4 r cis' | a2 e4 |
    d2 d4 | b2 cis4 | d4 r b' | gis2 fis4 |
    e2 e4 | cis'2 b4 | a2.~ | a4 r r |
  }
  \repeat volta 2 { cis4^\markup { \italic refren } cis8 b a4 | a4 cis8 b a4 | a4 d4. cis8 | b2 r4 | }
  \alternative {
    { b4 b8 a gis4 | b4 b8 a gis4 | b4 cis4. b8 | a2 r4 | }
    { d4 cis b | a gis fis | e fis gis | a2. }
  } \bar "|."
}
altomelody = \relative f' {
  \repeat volta 2 {
    e2 a4 | gis2 fis4 | e2 e4 | e2 d4 |
    e2 d4 | cis2 cis4 | e4 r a | e2 cis4 |
    b2 b4 | b2 cis4 | d4 r gis | e2 d4 |
    cis2 e4 | gis2 fis4 | e2.~ | e4 r r |
  }
  \repeat volta 2 { a4 a8 a a4 | a4 a8 a a4 | a4 a4. a8 | fis2 r4 | }
  \alternative {
    { gis4 gis8 fis e4 | gis4 gis8 fis e4 | gis4 gis4. gis8 | e2 r4 | }
    { fis4 fis fis | e4 e e | e4 e e | e2. }
  } \bar "|."
}
tenormelody = \relative c' {
  \repeat volta 2 {
    e,2 a4 | e'2 d4 | cis2 b4 | cis4( b) a |
    b2 b4 | a2 a4 | cis2.~ | cis2 r4 |
    gis2 gis4 | gis2 b4 | b2.~ | b2 r4 |
    a2 gis4 | e'2 d4 | cis2.~ | cis4 r r |
  }
  \repeat volta 2 { e4 e8 d cis4 | e4 e8 d cis4 | e4 fis4. e8 | d2 r4 | }
  \alternative {
    { e4 d8 d cis4 | b4 cis8 cis d4 | e4 e4. d8 | cis2 r4 | }
    { b4 a d | cis b a | gis a b | cis2. }
  } \bar "|."
}
bassmelody = \relative f {
  \repeat volta 2 {
    e2 a4 | a2 a4 | a2 a4 | a4( e) fis |
    gis2 gis4 | a2 fis4 | a2.~ | a2 r4 |
    e2 e4 | e2 e4 | e2.~ | e2 r4 |
    e2 e4 | e2 e4 | a2.~ | a4 r r |
  }
  \repeat volta 2 { a4 a8 a a4 | a4 a8 a a4 | a4 a4. a8 | a2 r4 | }
  \alternative {
    { e4 e8 e e4 | e4 e8 e e4 | e4 e4. e8 | a2 r4 | }
    { e4 e e | e4 e e | e4 e e | a2. }
  } \bar "|."
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
womentext =  \lyricmode 	{
  \set stanza = "1. "
  Szła dzie -- we -- czka do la -- se -- czka,
  do zie -- lo -- ne -- go, ha ha ha!
  do zie -- lo -- ne -- go, ha ha ha!
  do zie -- lo -- ne -- go!
  Tra la la la, tra la la la, tra la la la!
  Tra la la la, tra la la la, tra la la la!
  Tra la la la la la la la la la!
}
mentext =  \lyricmode 	{
  \set stanza = "1. "
  Szła dzie -- we -- czka do la -- se -- czka,
  do zie -- lo -- ne -- go,
  do zie -- lo -- ne -- go,
  do zie -- lo -- ne -- go!
  Tra la la la, tra la la la, tra la la la!
  Tra la la la, tra la la la, tra la la la!
  Tra la la la la la la la la la!
}
womenlinetwo = \lyricmode {
  Na -- pot -- ka -- ła my -- śli -- we -- czka
  bar -- dzo szwar -- ne -- go, ha ha ha!
  bar -- dzo szwar -- ne -- go, ha ha ha!
  bar -- dzo szwar -- ne -- go!
}
menlinetwo = \lyricmode {
  Na -- pot -- ka -- ła my -- śli -- we -- czka
  bar -- dzo szwar -- ne -- go,
  bar -- dzo szwar -- ne -- go,
  bar -- dzo szwar -- ne -- go!
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Myśliweczku, kochaneczku, bardzom ci rada (ha ha ha)!"
            "Dałabym ci chleba z masłem, alem go zjadła (ha ha ha)!"
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {

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
    \new Lyrics = womenlyrics \lyricsto soprano \womentext
    \new Lyrics = womenlyrics \lyricsto soprano \womenlinetwo

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
    \new Lyrics = menlyrics \lyricsto tenor \mentext
    \new Lyrics = menlyrics \lyricsto tenor \menlinetwo

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
