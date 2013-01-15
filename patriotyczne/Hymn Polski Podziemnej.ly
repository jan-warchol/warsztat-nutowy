\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Hymn Polski Podziemnej"
  composer = "muzyka: \"Pochmurny\", nazwisko nieznane"
  poet = "słowa: Kazimierz Feliks Kumaniecki (1905-1977)"
  arranger = "opracowanie: Wiesław Jeleń"
}
commonprops = {
  \autoBeamOff
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  \key g \minor
  \time 4/4
}
#(set-global-staff-size 17)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  g4^\markup { \italic zwrotka } g8. bes16 d4 d8 c | bes2 g |
  a4 a8. bes16 c4 a8. es'16 | d2. r4 |
  c4 c8. bes16 a4 a8. bes16 | a2 a |
  d,4 d8. d16 e4 d8. d16 | g2. r8 d8^\markup { \italic refren } |

  \key g \major b'4. a8 g4 g8. g16 | b2 g4. g8 |
  a4. a8 c4 b8. a16 | b2. r8 b |
  e2 b | e4 e8 d8 b4 b8. b16 |
  a4. a8 c4 b8. a16 | b2. r8 b |
  e2 b | e4 e8 d8 b4 b8. b16 |
  a4. a8 c4 b8. a16 | g1
  \bar "|."
}
altomelody = \relative f' {
  g4 g8. bes16 bes4 bes8 a8 | g2 d |
  es4 es8. es16 es4 f8. g16 | fis2. r4 |
  es4 es8. es16 es4 es8. es16 | es2 d |
  d4 d8. d16 cis4 d8. d16 | d2. r8 d |

  \key g \major g4. fis8 e4 e8. e16 | d2 d4. d8 |
  e4. e8 e4 e8. e16 | d2. r8 b' |
  g2 e | g4 g8 g e4 e8. e16 |
  e4. e8 a4 g8. fis16 | g2. r8 b |
  g2 e | g4 g8 g e4 e8. e16 |
  e4. e8 a4 g8. d16 | d1
  \bar "|."
}
tenormelody = \relative c' {
  g4 g8. g16 g4 g8 g | d'2 bes |
  c4 c8. c16 c4 c8. c16 | a2. r4 |
  c4 c8. c16 c4 c8. c16 | c2 c |
  d4 d8. d16 cis4 c8. c16 | bes2. r8 d8 |

  \key g \major d4 c b b8. b16 | b4( a) g b |
  c4 c a g8. a16 | b4( c d) r8 b |
  b2 g | b4 b8 b g4 g8. g16 |
  c4. c8 e4 d8. c16 | d2. r8 d |
  b2 g | b4 b8 b g4 g8. g16 |
  c4. c8 e4 d8. c16 | b1
  \bar "|."
}
bassmelody = \relative f {
  g4 g8. g16 g4 g8 g | g2 g |
  a4 a8. a16 a4 a8. a16 | d,2. r4 |
  a'4 a8. a16 g4 g8. g16 | g2 fis |
  d'4 c8. c16 a4 fis8. fis16 | g2. r8 d |

  \key g \major g4 g g g8. g16 | d4( c) b g' |
  a4 a a g8. g16 | g4( a b) r8 b |
  e,2 e | e4 e8 e e4 e8. e16 |
  a4. a8 a4 a8. a16 | g2. r8 g |
  e2 e | e4 e8 e e4 e8. e16 |
  a4. a8 a4 a8. a16 | g1
  \bar "|."
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "		% first stanza + refrain
  Na -- przód, do bo -- ju, żoł -- nie -- rze Pol -- ski Pod -- ziem -- nej, za broń!
  Bos -- ka po -- tę -- ga nas strze -- że, wo -- ła do bo -- ju nas dzwon!
  Go -- dzi -- na pom -- sty wy -- bi -- ja, za zbrod -- nie, mę -- kę i krew.
  Do bro -- ni! Je -- zus, Ma -- ry -- ja! Żoł -- nier -- ski wo -- ła nas zew.
  Do bro -- ni! Je -- zus, Ma -- ry -- ja! Żoł -- nier -- ski wo -- ła nas zew.
}

stanzas = \markup {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        "2. "
        \column	{
          "Zorza wolności się pali nad Polską idących lat! Moc nasza przemoc powali, nowy dziś rodzi się świat!"
        }
      }
      \line {
        "3. "
        \column {
          "Za naszą Wolność i waszą, Bracia, chwytajmy za miecz! Śmierć ani trud nas nie straszą! Zwycięski orle nasz, leć!"
        }
      }
    }
    \hspace #0.1
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

everything = {
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
    \new Lyrics = womenlyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto soprano \text

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
    \new Lyrics = menlyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto tenor \text

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
  \unfoldRepeats \everything
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
  \everything
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas