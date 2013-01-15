right = { \once \override LyricText #'self-alignment-X = #-0.8 }
righty = { \once \override LyricText #'self-alignment-X = #-0.6 }
rightyy = { \once \override LyricText #'self-alignment-X = #-0.4 }
rightyyy = { \once \override LyricText #'self-alignment-X = #-0.2 }
left = { \once \override LyricText #'self-alignment-X = #0.8 }
lefty = { \once \override LyricText #'self-alignment-X = #0.6 }
leftyy = { \once \override LyricText #'self-alignment-X = #0.4 }
leftyyy = { \once \override LyricText #'self-alignment-X = #0.2 }

\header	{
  title = "Maranatha"
  composer = "muzyka: Fr. Ephraim"
  arranger = "opracowanie: A. Piecuch, J. Gałuszka OP"
}

\paper {
  top-margin = 12 \mm
  left-margin = 16 \mm
  right-margin = 14 \mm
  bottom-margin = 10 \mm
  ragged-last-bottom = ##f
}

#(set-global-staff-size 18)

sopran = \relative f' {
  \time 6/4
  \key e \minor
  \tempo Allegro
  \mark "refren"
  b4. a8 b4 g2.
  e4. fis8 g4 a2.
  b4 b2 a4. g8 a4
  fis1.
  \bar ":|"
  \mark "zwrotka"
  b2. a2 b4
  g2 a4 a a a
  c2. d4 d d
  b2. b
  b2. a2 b4
  g2\melisma a4\melismaEnd a2 a4
  c2. d2.
  b2. ~ b2 b4
  b2 a4 b2 a4
  b2\melisma a4\melismaEnd a2 c4
  c2 b4 c2 b4
  c2\melisma b4\melismaEnd b2 b4
  c2. d2.
  b1.
  \bar "|."
}

alt = \relative f' {
  \time 6/4
  \key e \minor
  g4. fis8 g4 e2.
  e4. e8 e4 e2.
  g4 g2 fis4. e8 fis4
  dis1.
  g2. e2 e4
  e2 fis4 fis fis fis
  g2. fis4 fis fis
  e2. e
  g2. e2 e4
  e2\melisma fis4\melismaEnd fis2 fis4
  g2. fis2.
  e2. ~ e2 e4
  e2 e4 e2 e4
  e2. e2 a4
  a2 g4 a2 g4
  a2\melisma g4\melismaEnd g2 g4
  g2. fis2.
  e1.
  \bar "|."
}

tenor = \relative f' {
  \time 6/4
  \key e \minor
  \clef "G_8"
  e4. e8 e4 b2.
  g4. a8 b4 c2.
  d4 d2 e4. a,8 e'4
  b1.
  e2. c2 c4
  b2 d4 d d d
  e2. a,4 a a
  g2. g
  e'2. c2 c4
  b2\melisma d4\melismaEnd d2 d4
  e2. a,2.
  g2. ~ g2 g4
  g2 c4 g2 c4
  g2\melisma c4\melismaEnd c2 e4
  e2 e4 e2 e4
  e2. e2 e4
  e2. a,2.
  b1.
  \bar "|."
}

bas = \relative f {
  \time 6/4
  \key e \minor
  \clef F
  e4. e8 e4 e2.
  e4. e8 e4 a,2.
  g4 g2 c4. c8 c4
  b1.
  e2. a,2 a4
  e'2 d4 d d d
  c2. d4 d d
  e2. e
  e2. a,2 a4
  e'2\melisma d4\melismaEnd d2 d4
  c2. d2.
  e2. ~ e2 e4
  e2 a,4 e'2 a,4
  e'2\melisma a,4\melismaEnd a2 a4
  a2 e'4 a,2 e'4
  a,2\melisma e'4\melismaEnd e2 e4
  c2. d2.
  e1.
  \bar "|."
}


tekst = \lyricmode {
  Ma -- ra -- na -- tha,
  przyjdź Pa -- nie, przyjdź,
  Je -- zu Ma -- ra -- na -- tha.
  I u -- sły -- sza -- łem jak gdy -- by głos
  do -- noś -- ny z_nie -- ba
  tłum wiel -- ki śpie -- wał:
  Al -- le -- lu -- ja!
  Zba -- wie -- nie, moc i chwa -- ła,
  zba -- wie -- nie, moc i chwa -- ła
  od Bo -- _ ga.
}



%--------------------------------LAYOUT--------------------------------
\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \set Voice.midiInstrument = "clarinet"
        \sopran
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \tekst

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \set Voice.midiInstrument = "english horn"
        \alt
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \tekst

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \tenor
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \tekst

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \set Voice.midiInstrument = "clarinet"
        \bas
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \tekst
  >>
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
  \midi {}
}

\markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column {
            "Dwudziestu | czterech starców i | czworo zwierząt przed | tronem, | pokłon od|dało Mu: Al|lelu|ja!"
            "I | wyszedł głos od | tronu, | wszyscy Jego | słudzy | chwalcie | Go!"
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "I usłyszałem głos jakby huk potężnych gromów, Głos, który w niebie grzmiał: Alleluja!"
            "Bo zakrólował Pan Bóg nasz, bo zakrólował Pan Bóg nasz, wszechmocny!"
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Oto nadeszły chwalebne gody Baranka, małżonka czeka już: Alleluja!"
            "Błogosławieni, którzy wezwani są na ucztę Baranka!"
          }
        }
      }
      \hspace #0.1
    }
  }
}

\markup \vspace #1

%{
  \new RhythmicStaff {
  \time 6/4
  c2. c2 c4
  c2 c4 c c c
  c2 c4 c c c
  c2. c2.
  c2. c2 c4
  c2 c4 c2 c4
  c2. c2.
  c2. ~ c2
  }
  \addlyrics {
  Dwu -- dzie -- stu czte -- rech star -- ców i czwo -- ro zwie -- rząt przed tro -- nem,
  po -- kłon od -- da -- ło Mu: Al -- le -- lu -- ja!
  I wy -- szedł głos od tro -- nu, wszy -- scy Je -- go słu -- dzy chwal -- cie Go!
  }
%}