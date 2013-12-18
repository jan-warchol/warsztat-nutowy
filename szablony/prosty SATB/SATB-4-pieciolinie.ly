\version "2.17.25"
#(ly:set-option 'strokeadjust #t)

\header	{
  title = ""
  poet = ""
  composer = ""
}
%--------------------------------MELODIA
metrumitp = {
  \key g \major
  \time 4/4
  \tempo ""
}
melodiaSopranu =
\relative f' {
  \metrumitp
  \bar "|."
}
melodiaAltu =
\relative f' {
  \metrumitp
  \bar "|."
}
melodiaTenorow =
\relative f {
  \metrumitp
  \bar "|."
}
melodiaBasow =
\relative f {
  \metrumitp
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
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
      \set Staff.instrumentName = "Alt "
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
      \set Staff.instrumentName = "Tenor "
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
      \set Staff.instrumentName = "Bas "
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
