\version "2.17.25"
#(ly:set-option 'strokeadjust #t)

\header	{
  title = "Pieśń o Zmartwychwstaniu Umarłych"
  subsubtitle = "19.03.2013"
  poet = "słowa: św. Efrem Syryjczyk"
  composer = "muzyka: Jakub Tomalak"
}
%--------------------------------MELODIA
metrumitp = {
  \key g \minor
  \time 4/4
  \tempo 4 = 60
  \partial 8
}
melodiaSopranu =
\relative f' {
  \metrumitp
  \override Stem.neutral-direction = #UP
  bes8
  bes4( a8 bes16 a) g4 8 16 16
  a4( g8 a16 g) f4 r8 bes
  bes8.( a16) g8 f16( g) a8.( g16) f8 d16( f)
  g4 4~ 4 r8 d'
  \repeat volta 2 {
    d4(c8 d16 c) bes4 8 16 16
    c8( \tuplet 3/2 { bes16 c bes } a8 g16 a) a4 r8 d
    d8( \tuplet 3/2 { c16 d c) } bes8 a16( bes) c8( \tuplet 3/2 { bes16 c bes) } a8 g16( a)
  }
  \alternative {
    { bes8( a) g4~ 4 r8 d' }
    { bes8( a) g4~ 2\fermata }
  }
  g8( bes) c\breve bes8 c bes( a) g4 r d8( f)
  a\breve g8 a bes( a) g2 r4 g8( bes)
  c\breve bes8 c bes( a)
  g4 d8( f) a\breve g8 a bes4 a\fermata
  \bar "|."
}
melodiaAltu =
\relative f' {
  \metrumitp
  d8
  d2 4 8 16 16
  c2 4 4
  d4 8 8 c4 8 8
  d4 4~4 r8 8
  \repeat volta 2 {
  d2 4 8 16 16
  c2 4 4
  d4 8 8 c4 8 8
  }
  \alternative {
    { d4 4~4 r8 8 }
    { d4 4~2\fermata }
  }
  \bar "|."
}
melodiaTenorow =
\relative f {
  \metrumitp
  d'8
  d4(c8 d16 c) bes4 8 16 16
  c4( bes8 c16 bes) a4 r8 d
  d8.( c16) bes8 a16( bes) c8.( bes16) a8 g16( a)
  bes8( a) g4~ 4 r8 d'
  \repeat volta 2 {
    bes4(a8 bes16 a) g4 8 16 16
    a8( \tuplet 3/2 { g16 a g } f4) f4 r8 bes
    bes8( \tuplet 3/2 { a16 bes a) } g8 8 a8( \tuplet 3/2 { g16 a g) } f8 8
  }
  \alternative {
    { g4 4~ 4 r8 bes }
    { g4 4~ 2\fermata }
  }
  \bar "|."
}
melodiaBasow =
\relative f {
  \metrumitp
  <g g,>8
  <g g,>2 4 8 16 16
  <f f,>2 4 4
  <g g,>4 8 8 <f f,>4 8 8
  <g g,>4 4~4 r8 8
  \repeat volta 2 {
  <g g,>2 4 8 16 16
  <f f,>2 4 4
  <g g,>4 8 8 <f f,>4 8 8
  }
  \alternative {
    { <g g,>4 4~4 r8 8 }
    { <g g,>4 4~2\fermata }
  }
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "Ref."
  Niech bę -- dzie Bóg u -- wiel -- bio -- ny,
  On ży -- cie przy -- wra -- ca u -- mar -- łym.
  Niech bę -- dzie Bóg u -- wiel -- bio -- ny,
  On ży -- cie przy -- wra -- ca u -- mar -- łym.
  \set stanza = "1."
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
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
  
  #(define fonts
    (make-pango-font-tree "antpolt"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

#(define powiekszenie-zwrotek '(1.2 . 1.2))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
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
      \set Staff.instrumentName = "Sopran "
      \set Staff.shortInstrumentName = "S "
      \new Voice = sopran {
        \set Staff.midiInstrument = "clarinet"
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
        \set Staff.midiInstrument = "clarinet"
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
        \set Staff.midiInstrument = "clarinet"
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
        \set Staff.midiInstrument = "clarinet"
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
        \line {
          \bold
          "3."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIII
        }
        \odstepMiedzyZwrotkami
      }

      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "4."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIV
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "5."
          \odstepOdNumeruDoZwrotki
          \zwrotkaV
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