\version "2.17.3"
#(set-global-staff-size 20)

\header	{
  title = "Tylko w Twoim Miłosierdziu"
  poet = "słowa zwrotek: Ps 145"
  composer = "muzyka: Paweł Bębenek"
}

\paper {
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \key g \major
  \time 3/4
  \partial 4
  a8 b
  \repeat volta 2 {
    c4. b8 a g
    a4 a a8 b
  }
  \alternative {
    {
      g4. e8 fis g
      a2 a8 b
    }
    {
      g4. e8 g fis
      g2.
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    g\breve a8 b a4 a
    \bar "|"
    g\breve c8 b a4 a
    \cadenzaOff
  }
}
altomelody = \relative f' {
  \key g \major
  \time 3/4
  \partial 4
  c8 d
  \repeat volta 2 {
    e4. e8 e e
    fis8 e fis4 fis16 e d8
  }
  \alternative {
    {
      e4. c8 c c
      g'4( fis) fis8 d
    }
    {
      e4. c8 e d
      d2.
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    e\breve fis8 fis e4 e
    \bar "|"
    e\breve e8 fis g4 fis
    \cadenzaOff
  }
}
tenormelody = \relative f {
  \key g \major
  \time 3/4
  \partial 4
  a8 a
  \repeat volta 2 {
    a4. a8 a a
    a4 a a8 g
  }
  \alternative {
    {
      c4. c8 a a
      a2 a8 g
    }
    {
      c4. a8 a a
      b2.
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    b\breve d8 d c4 c
    \bar "|"
    c\breve c8 c d4 d
    \cadenzaOff
  }
}
bassmelody = \relative f {
  \key g \major
  \time 3/4
  \partial 4
  a,8 a
  \repeat volta 2 {
    a4. a8 a a
    d4 d d8 d
  }
  \alternative {
    {
      a4. a8 a a
      d2 d8 d
    }
    {
      a4. a8 a d
      g2.
    }
  }
  \bar "|."
  \break
  \repeat volta 2 {
    \cadenzaOn
    e\breve fis8 g a4 a
    \bar "|"
    a,\breve a8 a d4 d
    \cadenzaOff
  }
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  s4
  a2.:m d
  \once \override ChordName #'Y-offset = #-1
  a:m d
  \once \override ChordName #'Y-offset = #-1
  a:m g
  \cadenzaOn
  e\breve:m d4 a2:m
  a\breve:m s4 d2
  \cadenzaOff
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  Tyl -- ko w_Two -- im mi -- ło -- \tweak #'X-offset #-0.8 sier -- \tweak #'X-offset #-1 dziu,
  \tweak #'X-offset #-0.3 Pa -- nie mój, na -- dzie -- ja ma. Tyl -- ko
  mój, na -- dzie -- ja ma.
  \tweak #'X-offset #-1.5 \markup \scale #'(0.97 . 1) "Chcę Cię wywyższać, Boże"
  \markup \bold \underline mój i kró -- lu,
  \tweak #'X-offset #-0.5 \markup \scale #'(0.9 . 1) "i błogosławić imię Twe na zawsze"
  \markup \bold \underline i na wie -- ki.
}
secondverse = \lyricmode {
  \repeat unfold 22 \skip4
  \tweak #'X-offset #-1.5 "Każdego dnia będę Ciebie"
  \markup \bold \underline bło -- go -- sła -- wił,
  \tweak #'X-offset #-0.5 "i na wieki wysławiał"
  \markup \bold \underline Two -- je i -- mię.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics = sopranolyrics \with {
    }
    \lyricsto soprano \text
    \new Lyrics = sopranolyrics \with {
    }
    \lyricsto soprano \secondverse

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    \override NoteHead #'style = #'altdefault
    indent = 0
  }
}
