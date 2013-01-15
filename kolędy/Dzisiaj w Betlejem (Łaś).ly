%{TODO:
  akordy, szczególnie w taktach 10, 11, 14. w takcie 7 a czy C?
%}

\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Dzisiaj w Betlejem"
  arranger = "opracowanie: ks. Józef Łaś SJ (1907-1990)"
}
commonprops = {
  \autoBeamOff
  \key g \major
  \time 3/4
  \tempo "Animato" 4=120
}
\paper {
  page-count = #1
}
#(set-global-staff-size 17)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  g4^\p
  \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 ) g8^\markup { \italic zwrotka }
  d g a |
  b4^\mf b8 a b c |
  d^\f e d4 c |
  b^\> a\! r |
  g4^\p g8 d g a |
  b4^\mf b8 a b c | \break
  d^\f e d4 c |
  b^\> a\! r |
  \repeat volta 2	{
    d4^\mf \once \override TextScript #'extra-offset = #'( -4.0 . 0.0 ) d8^\markup { \italic refren } c b a |
    g4 g8 d g b |
    d4 d8 c b a | \break
    g4 g8 d g b |
    d e d c b c |
    d e d c b c |
    d8^\f d e4 d |
    c4^\markup{\italic rit.} b a^\> |
    g2.\!
  }
}
altomelody = \relative f' {
  R1*3/4
  g4^\mf g8 d g a |
  g^\f g g4 g |
  g^\> fis\! r |
  R1*3/4
  g4^\mf g8 d g a |
  g^\f g  g[ fis] e[ fis] |
  g4^\> fis\! r |
  \repeat volta 2 {
    fis4^\mf fis8 fis fis fis |
    g4 g8 d g g |
    fis4 g8 a g fis |
    g4 g8 d g g |
    b c b a g a |
    b c b a g a |
    b^\f a gis4 gis |
    e8[ fis] g4 fis^\> |
    d2.\!
  }
}
tenormelody = \relative c' {
  R1*3/4*2 |
  b8^\f c b4 c |
  d^\> d\! r |
  R1*3/4*2 |
  b8^\f c b4 c |
  d8[^\> cis] d4\! r |
  \repeat volta 2 {
    a8[^\mf c] b a d c |
    b[ c] d c b d |
    a[ c] b a b c |
    d[ e] d c b d |
    d4 d d |
    d4 d d |
    d8^\f d b4 b |
    a4 b8[ c] d[^\> c] |
    b2.\!
  }
}
bassmelody = \relative f {
  R1*3/4*2 |
  g8^\f g g4 e |
  d^\> d\! r |
  R1*3/4*2 |
  g8^\f g g4 a |
  g^\> d\! r |
  \repeat volta 2 {
    d4^\mf d8 d d d |
    g[ a] b a g g |
    d4 e8 fis g a |
    b[ c] b a g g |
    g4 g g8[ fis] |
    e4 fis g |
    g8^\f f e4 e |
    a g d^\> |
    g2.\!
  }
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  g2. g g2 c4 g d2
  g2. g g2 a4:m g d2
  \repeat volta 2 {
    d2.:7 g d4 e:m g g2.
    g2. e4:m b:m g g e2 a4:m g d g2.
  }
}
%--------------------------------LYRICS--------------------------------
womentext =  \lyricmode {
  \set stanza = "1. "
  Dzi -- siaj w_Be -- tle -- jem, dzi -- siaj w_Be -- tle -- jem we -- so -- ła no -- wi -- na,
  że Pan -- na czy -- sta, że Pan -- na czy -- sta po -- ro -- dzi -- ła Sy -- na.
  Chry -- stus się ro -- dzi nas o -- swo -- bo -- dzi, a -- nie -- li gra -- ją kró -- le wi -- ta -- ją,
  pa -- ste -- rze śpie -- wa -- ją, by -- dlę -- ta klę -- ka -- ją, cu -- da, cu -- da o -- gła -- sza -- ją.
}
altotext =  \lyricmode {
  Dzi -- siaj w_Be -- tle -- jem, we -- so -- ła no -- wi -- na,
  że Pan -- na czy -- sta po -- ro -- dzi -- ła Sy -- na.
  Chry -- stus się ro -- dzi nas o -- swo -- bo -- dzi, a -- nie -- li gra -- ją kró -- le wi -- ta -- ją,
  pa -- ste -- rze śpie -- wa -- ją, by -- dlę -- ta klę -- ka -- ją, cu -- da, cu -- da o -- gła -- sza -- ją.
}
mentext =  \lyricmode {
  we -- so -- ła no -- wi -- na,
  po -- ro -- dzi -- ła Sy -- na.
  Chry -- stus się ro -- dzi nas o -- swo -- bo -- dzi, a -- nie -- li gra -- ją kró -- le wi -- ta -- ją,
  pa -- ste -- rze śpie -- wa -- ją, cu -- da, cu -- da o -- gła -- sza -- ją.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Maryja Panna Dzieciątko piastuje, i Józef święty Ono pielęgnuje."
          }
        }
        \line {
          "3. "
          \column	{
            "Choć w stajeneczce Panna Syna rodzi, przecież On wkrótce ludzi oswobodzi."
          }
        }
        \line {
          "4. "
          \column	{
            "I Trzej Królowie od wschodu przybyli, i dary Panu kosztowne złożyli."
          }
        }
        \line {
          "5. "
          \column	{
            "Pójdźmy też i my przywitać Jezusa, Króla nad królmi, uwielbić Chrystusa."
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
    \new Lyrics = womenlyrics \lyricsto soprano \womentext

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
    \new Lyrics = altolyr \lyricsto alto \altotext

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
    \new Lyrics = menlyrics \lyricsto tenor \mentext
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
