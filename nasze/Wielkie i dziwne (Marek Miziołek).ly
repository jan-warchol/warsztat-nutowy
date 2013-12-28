\version "2.17.25"
#(ly:set-option 'strokeadjust #t)

\header	{
  title = "Wielkie i dziwne są dzieła Twoje"
  composer = "muzyka: ks. H. Markwica"
  arranger = "opracowanie: Marek Miziołek"
  poet = "słowa: por. Ap 15, 3-4"
}
%--------------------------------MELODIA
metrumitp = {
  \key g \major
  \time 2/4
  \tempo ""
}
melodiaSopranu =
\relative f' {
  \metrumitp
  g4 g8 g8
  fis4 fis4 | % 3
  a4 a8 e8 | % 4
  g8( fis8) e4 | % 5
  b'4 b4 | % 6
  a4 a4 | % 7
  a4 a4 | % 8
  g4 fis4 | % 9
  g4 g8 g8 | \barNumberCheck #10
  d4 d4 | % 11
  d4 d8 d8 | % 12
  e4 e4 | % 13
  \break
  e2 | % 14
  fis4. fis8 | % 15
  g8( fis8) e4 ~ | % 16
  e r4 | % 17
  e2 | % 18
  fis4. fis8 | % 19
  g8( fis8) e4 ~ | \barNumberCheck #20
  e4 r | % 21
  \bar "|."
}
melodiaAltu =
\relative f' {
  \metrumitp
  g4 g8 g8
  fis4 fis4 | % 3
  e4 e8 c8 | % 4
  d4 e4 | % 5
  e4 e4 | % 6
  a8( g8) a4 | % 7
  e4 e4 | % 8
  c4 d4 | % 9
  d4 d8 g8 | \barNumberCheck #10
  e4 d4 | % 11
  a4 b8 a8 | % 12
  b4 b4 | % 13
  e2 | % 14
  d4. d8 | % 15
  e8( d8) e4 ~ | % 16
  e4 r4 | % 17
  e2 | % 18
  d4. d8 | % 19
  e8( d8) e4 ~ | \barNumberCheck #20
  e4 r4 | % 21
  \bar "|."
}
melodiaTenorow =
\relative f {
  \metrumitp
  b4 b8
  d8 | % 2
  a4 a4 | % 3
  c4 d8 e8 | % 4
  g8( d8) e4 | % 5
  b4 b4 | % 6
  d4 d4 | % 7
  e4 e4 | % 8
  c4 d4 | % 9
  g,4 d8 g8 | \barNumberCheck #10
  a8( g8) a4 | % 11
  d4 b8 d8 | % 12
  g8( fis8) e4 | % 13
  c8( b8 a8 g8) | % 14
  a4. a8 | % 15
  b8( a8) b4 ~ | % 16
  b4 r4 | % 17
  e,8( fis8 g4) | % 18
  a4. a8 | % 19
  b8( a8) b4 ~ | \barNumberCheck #20
  b4 r4 | % 21
  \bar "|."
}
melodiaBasow =
\relative f {
  \metrumitp
  b,4 b8 d8 | % 2
  a4 a4 | % 3
  a4 a8 e8 | % 4
  g4 b4 | % 5
  g4 g4 | % 6
  d'4 d4 | % 7
  a4 b8( c8) | % 8
  d4 d4 | % 9
  g,4 g8 g8 | \barNumberCheck #10
  d'4 d4 | % 11
  b4 b8 b8 | % 12
  c8( b8) a4 | % 13
  c2 | % 14
  a4. a8 | % 15
  b8( a8) b4 ~ | % 16
  b4 r4 | % 17
  c2 | % 18
  a4. a8 | % 19
  b8( a8) b4 ~ | \barNumberCheck #20
  b4 r4 | % 21
  \bar "|."
}
akordy = \chordmode {
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
  indent = 12 \mm
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
  system-count = 3
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
      \set Staff.instrumentName = "Sopran "
      \set Staff.shortInstrumentName = "S "
      \new Voice = sopran {
        \set Voice.midiInstrument = "acoustic grand"
        \dynamicUp
        \tupletUp
        \melodiaSopranu
      }
    }
    \new Lyrics \lyricsto sopran \tekstSopranu

    \new Staff = alt
    \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "Alt "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alt {
        \set Voice.midiInstrument = "acoustic grand"
        \dynamicUp
        \tupletUp
        \melodiaAltu
      }
    }
    \new Lyrics \lyricsto alt \tekstAltu

    \new Staff = tenor
    \with { \consists "Ambitus_engraver" } {
      \clef "treble_8"
      \set Staff.instrumentName = "Tenor "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "acoustic grand"
        \dynamicUp
        \tupletUp
        \melodiaTenorow
      }
    }
    \new Lyrics \lyricsto tenor \tekstTenorow

    \new Staff = bas
    \with { \consists "Ambitus_engraver" } {
      \clef bass
      \set Staff.instrumentName = "Bas "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bas {
        \set Voice.midiInstrument = "acoustic grand"
        \dynamicUp
        \tupletUp
        \melodiaBasow
      }
    }
    \new Lyrics \lyricsto bas \tekstBasow
  >>
  \layout {}
  \midi {}
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
