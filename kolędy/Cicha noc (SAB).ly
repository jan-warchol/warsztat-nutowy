%{TODO:
  czy e-molle na początku w akordach nie są przekombinowane?
%}

\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Cicha noc"
  composer = "muzyka: Franz Xaver Gruber (1787-1863)"
  poet = \markup { \column {"słowa: ks. Józef Mohr (1792-1848)" "tłumaczenie: Piotr Maszyński" } }
}
commonprops = {
  \autoBeamOff
  \tempo 4 = 50
  \set Score.tempoHideNote = ##t
  \key c \major
  \time 6/8
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  g8.[( a16]) g8 e4. |
  g8.[( a16]) g8 e4. \breathe |
  d'4 d8 b4 b8 |
  c4 c8 g4. \breathe |
  % 5
  a4 a8 c8.[( b16)] a8 |
  g8.[( a16)] g8 e4 e8 \breathe |
  a4 a8 c8.[( b16)] a8 |
  g8.[( a16)] g8 e4 e8 \breathe |
  % 9
  d'4 d8 f8.[( d16)] b8 |
  c4.( e\fermata) \breathe |
  c8.[( g16)] e8 g8.[( f16)] d8 |
  c2. \bar "|."
}
altomelody = \relative f' {
  e8.[( f16]) e8 c4. |
  c4 c8 c4. \breathe |
  d4 a'8 g4 f8 |
  e4 e8 c4. \breathe |
  % 5
  c4 c8 f4 f8 |
  e4 b8 c4 c8 \breathe |
  f4 f8 a8.[( g16)] f8 |
  e4 b8 c4 c8 \breathe |
  % 9
  f4 a8 g4 f8 |
  e4.( b') \breathe |
  e,4 c8 b4 b8 |
  c2. \bar "|."
}
bassmelody = \relative f{
  r4. g8.[( a16]) g8 |
  e4. g8.[( a16]) g8 \breathe |
  f4 f8 g4 g8 |
  c,4 c8 e4. \breathe |
  % 5
  f4 e8 d4 d8 |
  e4 e8 a4 a8 \breathe |
  f4 f8 d4 d8 |
  e4 e8 a,4 a8 \breathe |
  % 9
  d4 f8 g4 g8 |
  a4.( g) \breathe |
  c,4 c8 d4 g8 |
  c,2. \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  e4.:m c e:m c d4.:m g c2.
  f4. d:m7 e:m a:m f d:m7 e:m a:m
  d:m g:7 a:m e:m c g c2.
}
%--------------------------------LYRICS--------------------------------
womentext =  \lyricmode {
  \set stanza = "1. "
  Ci -- cha noc! | Świę -- ta noc! |
  Po -- kój nie -- sie | lu -- dziom wszem, | \break
  a u żłó -- bka | Ma -- tka Świę -- ta |
  czu -- wa sa -- ma | u -- śmiech -- nię -- ta | \break
  nad Dzie -- cią -- tka | snem, |
  nad Dzie -- cią -- tka | snem. |
}
mentext =  \lyricmode {
  \set stanza = "1. "
  Ci -- cha |	noc! Świę -- ta! |
  Po -- kój nie -- sie | lu -- dziom wszem, |
  a u żłó -- bka | Ma -- tka Świę -- ta |
  czu -- wa sa -- ma | u -- śmiech -- nię -- ta |
  nad Dzie -- cią -- tka | snem, |
  nad Dzie -- cią -- tka | snem. |
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \line {
        "2. "
        \column	{
          "Cicha noc, święta noc!"
          "Pastuszkowie od swych trzód"
          "biegną wielce zadziwieni"
          "za anielskich głosem pieni,"
          "gdzie się spełnił cud,"
          "gdzie się spełnił cud."
        }
      }
      \hspace #0.1
      \line {
        "3. "
        \column {
          "Cicha noc, święta noc!"
          "Narodzony Boży Syn,"
          "Pan wielkiego majestatu"
          "niesie dziś całemu światu"
          "odkupienie win,"
          "odkupienie win."
        }
      }
      \hspace #0.1
    }
  }
}

%--------------------------------ALL-FILE VARIABLE--------------------------------

threestaveschoir = {
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
    \new Lyrics = sopranolyrics \lyricsto soprano \womentext

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
    \new Lyrics = altolyrics \lyricsto alto \womentext

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
    \new Lyrics = menlyrics \lyricsto bass \mentext
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \threestaveschoir
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
  \threestaveschoir
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas