\version "2.17.25"
#(ly:set-option 'strokeadjust #t)

\header	{
  title = "Wielkie i dziwne są dzieła Twoje"
  composer = "muzyka: ks. H. Markwica"
  arranger = "opracowanie: Łukasz Czerwiński, Jan Warchoł"
  poet = "słowa: por. Ap 15, 3-4"
}
%--------------------------------MELODIA
metrumitp = {
  \key g \major
  \time 2/4
  \tempo 4=60
  \set Score.tempoHideNote = ##t
}
melodiaSopranu =
\relative f' {
  \metrumitp
  g4 g8 g | fis4 fis | a a8 e | g8 ([fis8]) e4 |
  b'4 b4 | a4 a | a a4 | g4 fis |
  g g8 g | d4 d | d d8 d | e4 e | \break
  % 13: Królu narodów...
  e2 | fis4. fis8 | g ([fis]) e4 ~ | e2 |
  e2 | fis4. fis8 | g ([fis]) e4 ~ | e2
  \bar "|."
}
melodiaAltu =
\relative f' {
  \metrumitp
  d4 d8 d | d4 d | e d8 c | b4 b4 |
  d4 d8 ([e]) | fis4 fis | e4. e8 | e4 d |
  d d8 d8 | a4 a | b b8 d8 | e4 e |
  % 13: Królu narodów...
  c2 | d4. d8 | e8 ([d]) e4 ~ | e2 |
  c2 | d4. d8 | e8 ([fis8]) e4 ~ | e2
  \bar "|."
}
melodiaTenorow =
\relative f {
  \metrumitp
  b4 b8 b8 | a4 a | c4 b8 a8 | g4 g4 |
  b4 b4 | a4 a4 | a4. a8 | c4 c4 |
  r8 b b b | a4 a | r8 fis g a | g4 g |
  % 13: Królu narodów...
  r2 | a | b4. a8 | b ([a]) g4 |
  r4 b4 | a4. a8 | b8 ([a8]) g4 ~ | g2
  \bar "|."
}
melodiaBasow =
\relative f {
  \metrumitp
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
  \override ParenthesesItem #'font-size = 0
  g2 d a:m e:m g d
  a:m c4 d:7 g2 d b4:m
  \once \override ChordName #'font-size = #-1 \parenthesize
  g8
  \once \override ChordName #'font-size = #-1 \parenthesize
  d
  e2:m
  %Królu narodów
  c b:m7 e:m s2
  c:maj7 b:m7 e:m R
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
  Wiel -- kie i dziw -- ne są dzie -- ła Two -- je,
  Pa -- nie Bo -- że Wszech -- mo -- gą -- cy
  i spra -- wie -- dli -- we są dro -- gi Two -- je,
  Kró -- lu na -- ro -- dów,
  Kró -- lu na -- ro -- dów.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  "Któż by się nie bał Ciebie, o Boże,"
  "I nie uwielbił Twego Imienia,"
  "Gdyż sprawiedliwe są sądy Twoje,"
  "Królu Narodów."
}
zwrotkaIII = \markup \column {
  "Toteż przyjdą wszystkie narody"
  "I oddadzą Tobie pokłon,"
  "Gdyż sprawiedliwe są rządy Twoje,"
  "Królu Narodów."
}

%--------------------------------USTAWIENIA

#(set-global-staff-size 17)

\paper {
  indent = 2 \mm
  short-indent = 2 \mm
  left-margin = 15 \mm
  right-margin = 15 \mm
  top-markup-spacing #'basic-distance = 8
  markup-system-spacing #'basic-distance = 18
  system-system-spacing #'basic-distance = 18
  score-markup-spacing #'basic-distance = 15
}

#(define powiekszenie-zwrotek '(1.2 . 1.2))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\layout {
}

%--------------------------------STRUKTURA

\score {
  \new ChoirStaff <<
    \new ChordNames {
      \germanChords
      \set chordNameLowercaseMinor = ##t
      \akordy
    }
    \new Staff = sopran
    \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = sopran {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \tupletUp
        \melodiaSopranu
      }
    }
    \new Lyrics \lyricsto sopran \tekstSopranu

    \new Staff = alt
    \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \dynamicUp
        \tupletUp
        \melodiaAltu
      }
    }
    \new Lyrics \lyricsto alt \tekstAltu

    \new Staff = tenor
    \with { \consists "Ambitus_engraver" } {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \dynamicUp
        \tupletUp
        \melodiaTenorow
      }
    }
    \new Lyrics \lyricsto tenor \tekstTenorow

    \new Staff = bas
    \with { \consists "Ambitus_engraver" } {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bas {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \tupletUp
        \melodiaBasow
      }
    }
    \new Lyrics \lyricsto bas \tekstBasow
  >>
}

\markup {
  \fill-line {
    \scale #powiekszenie-zwrotek {
      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "2."
          \odstepOdNumeruDoZwrotki
          \zwrotkaII
        }
        \odstepMiedzyZwrotkami
      }

      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "3."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIII
        }
        \odstepMiedzyZwrotkami
      }

      \null
    }
  }
}

%--------------------------------STOPKA

\paper {
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 1.6)
    \center-column {
      \with-url
      #"http://lilypond.org/"
      \scale #'(0.75 . 0.75)
      #(format #f "LilyPond v~a"
         (lilypond-version)
         )
    }
  }

  oddFooterMarkup = \markup {
    \override #'(baseline-skip . 1)
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page {
          \override #'(baseline-skip . 2)
          \center-column {
            \scale #'(1 . 1)
            \fromproperty #'header:copyright
            \scale #'(0.85 . 0.85)
            "skład nut: Jan Warchoł (jan.warchol@gmail.com, 509 078 203)"
          }
        }
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
}
