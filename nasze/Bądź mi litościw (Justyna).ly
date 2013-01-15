\version "2.15.33"
\pointAndClickOff
\header	{
  title = "Bądź mi litościw"
  poet = "słowa: "
  composer = "muzyka: "
  arranger = "opracowanie: Justyna Adamska"
}
commonprops = {
  \autoBeamOff
  \tempo 4=70
  \set Score.tempoHideNote = ##t
  \key e \minor
  \time 4/4
}
#(set-global-staff-size 18)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  e,4 e8 e g[( fis]) e4 |
  fis8 fis e dis e4 e |
  e4 e8 e g[( fis]) e4 |
  fis8 fis e dis e4 e |
  \repeat volta 2 {
    g4 g8 g b[( a]) g4 |
    fis8 fis fis a g[( fis]) e[( dis]) |
    e4 e8 e g[( fis]) e4 |
    fis8 fis e dis e4 e |
  }
}
altomelody = \relative f' {
  e4 e8 e e4 c |
  e8 c a a b4 b |
  e4 e8 b e4 c |
  e8 c a a b4 b |
  \repeat volta 2 {
    b4 c8 c fis4 e |
    d8 d d d e[( d]) c[( b]) |
    b4 e8 e e4 c8[( b]) |
    e8 c a a b4 b |
  }
}
tenormelody = \relative c' {
  e,4 b'8 b g4 g |
  c8 a fis fis g4 g |
  g8[( a]) b g g[( a]) a4 |
  c8 a fis fis g4 g |
  \repeat volta 2 {
    g4 g8 a a4 b |
    b4 a8 fis g[( a]) a4 |
    b4 g8 a b4 c8[( b]) |
    c8 a fis fis g4 g |
  }
}
bassmelody = \relative f {
  e4 d8 d c4 b |
  a8 a b b e4 e |
  e8[( fis]) g e c4 c |
  a8 a b b e4 e8[( d])
  \repeat volta 2 {
    d8[( fis]) e e d4 b |
    b4 b8 b e4 fis |
    g4 b,8 b c4 g4 |
    a8 a b b e4 e
  }
}
akordy = \chordmode {
  %{
    e2:m7 c4 c7?
    f4 ?? e2:m
    e2:m c4 a:m7
    f4 ?? e2:m
    g4 7? c d e:m
    b:m2 e4:m ??
    e2:m c:maj7
    f4 ?? e2:m
  %}
}
%--------------------------------LYRICS--------------------------------
womentext =  \lyricmode {
  \set stanza = "1. "
  Bądź mi li -- to -- ściw, Bo -- że nie -- skoń -- czo -- ny,
  we -- dług wiel -- kie -- go mi -- ło -- sier -- dzia Twe -- go.
  We -- dług li -- to -- ści Twej nie -- po -- li -- czo -- nej,
  chciej zma -- zać mnó -- stwo prze -- wi -- nie -- nia me -- go.
}
mentext =  \lyricmode {
  \set stanza = "1. "
  Bądź mi li -- to -- ściw, Bo -- że nie -- skoń -- czo -- ny,
  we -- dług wiel -- kie -- go mi -- ło -- sier -- dzia Twe -- go.
  We -- dług li -- to -- ści nie -- po -- li -- czo -- nej,
  chciej zma -- zać mnó -- stwo prze -- wi -- nie -- nia me -- go.
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
    \new Lyrics \lyricsto soprano \womentext

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
    \new Lyrics \lyricsto alto \womentext


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
    \new Lyrics \lyricsto tenor \mentext

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
    \new Lyrics \lyricsto bass \mentext
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
