\paper {
  #(set-paper-size "a5")
  page-count = 1
  left-margin = 9\mm
  bottom-margin = 7\mm
  ragged-last-bottom = ##f
  top-markup-spacing #'basic-distance = #4
  markup-system-spacing #'basic-distance = #22
  score-markup-spacing #'basic-distance = #9
}

\header	{
  title = "Stwórz, o mój Boże"
  subtitle = "Psalm 51"
  subsubtitle = "Noc Miłosierdzia, AD 1997"
  poet = "słowa: por. Ps 51 (50), 3-4.12-15"
  composer = "muzyka: Jacek Sykulski"
  tagline = \markup \italic "od Janka dla Uli i Lecha"
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 2/2
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}
#(set-global-staff-size 14)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \repeat volta 2 {
    d,2 e4 f | a( g) e2 |
    f g4 a | c( bes) g2 |
    bes4 a f d | e2 e4 e
    f2 f | g f4 g | e1 | e
  }
  \cadenzaOn
  f\breve f8 d f4 f2 \cadenzaOff \bar"|"
  \cadenzaOn
  f\breve f8 d e4 e2 \cadenzaOff \bar"|"
  \cadenzaOn
  e\breve e8 c d4 d2 \cadenzaOff \bar"|"
  \cadenzaOn
  d\breve e8 d e4 e2 \cadenzaOff \bar"|."
}
altomelody = \relative f' {
  \repeat volta 2 {
    d2 d4 d | d2 d4( c) |
    d2 c4 c | f2 f4( e) |
    c c c bes | a2 a4 a |
    a2 d4( c) | d2 d4 d | c4( d2 c4) | cis1
  }
  d\breve d8 d d4 d2 |
  c\breve c8 c c4 c2 |
  c\breve c8 c c4 bes2 |
  bes\breve bes8 bes c([ d)] cis2 |
}
tenormelody = \relative c' {
  \repeat volta 2 {
    a2 g4 a | bes2 a |
    a g4 f | f( bes) c2 |
    c4 c f, f | e2 e4 e |
    d( f) a2 | bes a4 a | g1 | a
  }
  a\breve a8 a bes4 bes2 |
  a\breve a8 a g4 g2 |
  a\breve a8 g f4 f2 |
  g\breve g8 g g4 a2 |
}
bassmelody = \relative f {
  \repeat volta 2 {
    d2 d4 d | g,2 a |
    d e4 f | d2 c |
    f4 f d d | cis( b) a a |
    d2 c | bes bes4 bes | c2( bes) |a1
  }
  d\breve d8 d bes4 bes2 |
  f'\breve f8 f c4 c2 |
  a\breve a8 a bes4 bes2 |
  g\breve g8 g c4 a2 |
}

small = {
  \override ParenthesesItem #'font-size = #-1
  \once \override ChordName #'font-size = #-1
}

akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  \set majorSevenSymbol = \markup { 7+ }

  \repeat volta 2 {
    d1:m g2:m a:m d2:m \small \parenthesize c4 \small \parenthesize f4 bes2:9 c2
    f2 d2:m
    a1 d2:m f2
    g2:m bes4:maj7 \small \parenthesize g4:m c2 e2:dim
    a1
  }
  d\breve:m s4 bes2.
  f\breve s4 c2.
  a\breve:m s4 bes2.
  g\breve:m s4 c4 a
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  Stwórz o mój Bo -- że, stwórz o mój Bo -- że, we mnie ser -- ce czy -- ste i od -- nów we mnie moc Du -- cha.
  \set stanza = "1. "
  \once \override LyricText #'self-alignment-X = #LEFT \markup \scale #'(0.85 . 1) "Zmiłuj się nade mną, Boże, w łaska" -- wo -- ści Swo -- jej,
  \once \override LyricText #'self-alignment-X = #LEFT \markup \scale #'(0.87 . 1) "w ogromie Swej litości zgładź mo" -- ją nie -- pra -- wość.
  \once \override LyricText #'self-alignment-X = #LEFT "Obmyj mnie zupenie" z_mo -- jej wi -- ny,
  \once \override LyricText #'self-alignment-X = #LEFT "i oczyść mnie z grze" -- chu mo -- je -- go.
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Stwórz, o Boże, we mnie serce czyste, i odnów we mnie moc Ducha."
            "Nie odrzucaj mnie od swojego oblicza, i nie odbieraj mi Świętego Ducha Swego."
          }
        }
        \vspace #1
        \line {
          "3. "
          \column {
            "Przywróć mi radość z Twojego zbawienia, i wzmocnij mnie duchem ofiarnym."
            "Będę nieprawych nauczał dróg Twoich, i wrócą do Ciebie grzesznicy."
          }
        }
        \vspace #1.5
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \commonprops
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \commonprops
        \altomelody
      }
    >>
    \new Lyrics = lyrics \with {
      fontSize = 0
      \override VerticalAxisGroup #'staff-affinity = UP
      }
      \lyricsto soprano \text

      \new Staff = men <<
      \clef bass
      \new Voice = tenor {
      \voiceOne
      \commonprops
      \tenormelody
      }
      \new Voice = bass {
      \voiceTwo
      \commonprops
      \bassmelody
      }
      >>
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
  }
}

\stanzas
