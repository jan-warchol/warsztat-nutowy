%{TODO:
  czy to w ogóle jest harmonizowalne?
%}

\version "2.15.33"
\pointAndClickOff
\paper {
  top-markup-spacing #'basic-distance = #7
  markup-system-spacing #'basic-distance = #20
  ragged-last-bottom = ##f
}
\header	{
  title = "Bóg się rodzi"
  poet = "słowa: Franciszek Karpiński (1741-1825)"
  composer = "opracowanie: ks. Józef Łaś SJ (1907-1990)"
}
commonprops = {
  \autoBeamOff
  \tempo "Tempo poloneza" 4=100
  \set Score.tempoHideNote = ##t
  \key f \major
  \time 3/4
}
#(set-global-staff-size 17)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  f,8%{\f%} f' f4( e8) d |
  d8 d d4( c8) bes |
  a8 c f c bes a |
  a4 g r |
  f8 f' f4( e8) d |
  d8 d d4( c8) bes |
  a8 c f c bes a |
  a4 g r |
  \repeat volta 2 {
    bes4.%{\p%} g8 a bes |
    c8 c a4 c |
    bes4. g8 a bes |
    c8 c a4 c |
    bes4.%{\mf%} g8 a bes |
    c8 c a4 c |
    bes4. g8 a bes |
    c8 e, g4%{\>%} f^\!
  }
}
altomelody = \relative f' {
  f8%{\f%} f f4. f8 |
  bes8 a bes4( a8) g |
  a8 a a a g f |
  f4 e r |
  f8 f f[ a g] f8 |
  bes8 a bes4( a8) g |
  a8 g f f d f |
  f4 e r |
  \repeat volta 2	{
    e4.%{\p%} e8 f g |
    a8 a f4 f |
    e4. e8 f g |
    a8 a f4 f |
    g4.%{\mf%} g8 fis g |
    a8 a fis4 fis|
    g4. g8 f? f |
    e8 e d[%{\>%} e] c4^\!
  }
}
tenormelody = \relative c' {
  f,8%{\f%} a c4. d8 |
  d8 d g,4( c8) c |
  c8 c d d d b |
  c4 c r |
  f,8 a c4( cis8) d8 |
  d8 d g,4( c8) c |
  c8 c a a bes b |
  c4 c r |
  \repeat volta 2	{
    c8%{\p%}[ d] c4 c8 c |
    c8 c c[ d] c4 |
    c8[ d] c4 c8 c |
    c8 c c4 c |
    d8%{\mf%}[ es] d4 d8 d |
    d8 d d4 d |
    d8 es d4. d8 |
    c8 c bes4%{\>%} a^\! |
  }
}
bassmelody = \relative f {
  f8%{\f%} f a4. bes8 |
  g8 fis g f e4 |
  f8 e d d g g |
  c,4 c r |
  f8 f a4. bes8 |
  g8 fis g f e4 |
  f8 e d d g g |
  c,4 c r |
  \repeat volta 2	{
    g'4.%{\p%} bes8 a g |
    f8 f f4 a |
    g4. bes8 a g |
    f8 f f4 a |
    g4.%{\mf%} bes8 a g |
    fis8 fis d4 d |
    g4. bes8 a g |
    c,8 c c4%{\>%} f^\!
  }
}
akordy = \chordmode {
  f2. g2:m c4:7 f4 d:m g:m
  f c2 % zamiast f powinno się zapisać C z opóźnieniami
  f2. g:m f4 d:m g:m f c2
  \repeat volta 2 {
    c2.:7 f c:7 f
    g2.:m d:7 g:m c2 f4
  }
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Bóg się ro -- dzi, moc  tru -- chle -- je, Pan nie -- bio -- sów ob -- na -- żo -- ny!
  O -- gień krze -- pnie, blask cie -- mnie -- je, ma gra -- ni -- ce Nie -- skoń -- czo -- ny!
  Wzgar -- dzo -- ny o -- kry -- ty chwa -- łą, śmier -- tel -- ny Król nad wie -- ka -- mi!
  A Sło -- wo Cia -- łem się sta -- ło i mie -- szka -- ło mię -- dzy na -- mi.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \line {
        "2."
        \column	{
          "Cóż masz niebo nad ziemiany? "
          "Bóg porzucił szczęście twoje."
          "Wszedł między lud ukochany,"
          "Dzieląc z nim trudy i znoje."
          "Niemało cierpiał, niemało,"
          "Żeśmy byli winni sami."
          "A Słowo (...)"
        }
      }
      \hspace #0.1
      \line {
        "3."
        \column {
          "W nędznej szopie urodzony, "
          "Żłób Mu za kolebkę dano."
          "Cóż jest, czym był otoczony?"
          "Bydło, pasterze i siano."
          "Ubodzy, was to spotkało"
          "Witać Go przed bogaczami!"
          "A Słowo (...)"
        }
      }
      \hspace #0.1
      \line {
        "4."
        \column {
          "Podnieś rękę, Boże Dziecię,"
          "Błogosław Ojczyznę miłą!"
          "W dobrych radach, w dobrym bycie"
          "Wspieraj jej siłę Swą siłą."
          "Dom nasz i majętność całą,"
          "I wszystkie wioski z miastami."
          "A Słowo (...)"
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
    \new Lyrics = womenlyrics \lyricsto soprano \text

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
    \new Lyrics = womenlyrics \lyricsto soprano \text


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
    \new Lyrics = menlyrics \lyricsto tenor \text

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
    \new Lyrics = womenlyrics \lyricsto soprano \text

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
