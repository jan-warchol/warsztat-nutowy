%{TODO:
  czy w taktach 3, 7 i przedostatnim a-moll powinien zmieniać się na D-dur?
%}

\header	{
  title = "Wśród nocnej ciszy"
}
commonprops = {
  \tempo 4 = 120
  \set Score.tempoHideNote = ##t
  \autoBeamOff
  \key g \major
  \time 4/4
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  g2 a4 fis | g2 d | b'4 b c a | b2 r2 |
  g2 a4 fis | g2 d | b'4 b c a | b2 r2 |
  g4 b g b | c4. a8 fis4 d |
  g b g b | c4. a8 fis4 d |
  g g a a | g2 r2 \bar "|."
}
altomelody = \relative f' {
  b,2 c4 c | b2 a | d4 e e fis | g2 r2 |
  b,2 c4 c | b2 a | d4 e e fis | g2 r2 |
  b,4 d b d | d4. d8 d4 c |
  b4 d b d | d4. d8 d4 c |
  b b e fis | g2 r2 \bar "|."
}
bassmelody = \relative f {
  g2 d4 d | e2 fis | g4 g a d, | g2 r2 |
  g2 d4 d | e2 fis | g4 g a d, | g2 r2 |
  g4 g g g | fis4. fis8 d4 fis |
  g4 g g g | fis4. fis8 d4 fis |
  g e c d | g2 r2 \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  g2 d:7 e:m d g a:m g1
  g2 d:7 e:m d g a:m g1
  g1 d:7 g d:7 e2:m a:m g1
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Wśród noc -- nej | ci -- szy | głos się roz -- cho -- | dzi: |
  Wstań -- cie, pa -- | ste -- rze, | Bóg się wam ro -- | dzi! |
  Czem prę -- dzej się | wy -- bie -- raj -- cie, |
  do Bet -- le -- jem | po -- spie -- szaj -- cie |
  przy -- wi -- tać Pa -- | na!
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Poszli, znaleźli Dzieciątko w żłobie,"
            "z wszystkimi znaki danymi sobie."
            "Jako Bogu cześć Mu dali,"
            "A witając zawołali z wielkiej radości:"
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Ach, witaj Zbawco, z dawna żądany!"
            "Tyle tysięcy lat wyglądany!"
            "Na Ciebie króle, prorocy"
            "Czekali, a Tyś tej nocy nam się objawił!"
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "I my czekamy na Ciebie, Pana,"
            "A skoro przyjdziesz na głos kapłana,"
            "Padniemy na twarz przed Tobą,"
            "Wierząc żeś jest pod osłoną chleba i wina."
          }
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
    system-count = 3
    ragged-last = ##f
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas