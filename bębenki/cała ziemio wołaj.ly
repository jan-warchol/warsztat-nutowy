\version "2.17.3"
#(set-global-staff-size 17.5)

\header	{
  title = "Cała ziemio"
  poet = "słowa: Ps 98"
  composer = "muzyka: Dawid Kusz OP"
}

\paper {
  paper-width = 165 \mm
  paper-height = 240 \mm
  line-width = 145 \mm
  top-margin = 10 \mm
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \repeat volta 2 {
    \key a \minor
    \time 2/4
    e8 a a g
    a4 a8 b
    c c b g
    a4 a
  }
  \alternative {
    {
      e8\melisma a\melismaEnd g\melisma fis\melismaEnd
      e2
      d8\melisma e\melismaEnd fis \melisma d\melismaEnd
      e2
    }
    {
      e8\melisma a\melismaEnd g fis
      e2
      d8 g fis4
      e2
    }
  }
  \repeat volta 2 {
    \cadenzaOn
    a\breve g8 fis e4 e2
    g\breve fis8 fis e4 e2
    \cadenzaOff
  }
}
altomelody = \relative f' {
  \repeat volta 2 {
    \key a \minor
    \time 2/4
    e8 e fis d
    e4 e8 e
    e e g g
    e4 e
  }
  \alternative {
    {
      c8\melisma d16 e\melismaEnd d8\melisma c\melisma
      b2
      d4 d
      c2
    }
    {
      c8\melisma d16 e\melismaEnd d8\melisma c\melisma
      b2
      d4 d8 d
      e2
    }
  }
  \repeat volta 2 {
    \cadenzaOn
    e\breve e8 d b4 b2
    e\breve d8 d b4 b2
    \cadenzaOff
  }
}
tenormelody = \relative f {
  \repeat volta 2 {
    \key a \minor
    \time 2/4
    a8 a a b
    c8\melisma d\melismaEnd c b
    g g16\melisma a\melismaEnd b8 c
    a8\melisma g\melismaEnd a\melisma b\melismaEnd
  }
  \alternative {
    {
      c4 a
      g2
      fis8\melisma g\melismaEnd a\melisma b\melismaEnd
      a2
    }
    {
      c4 a8 a
      g2
      fis8 g a4
      a2
    }
  }
  \repeat volta 2 {
    \cadenzaOn
    c\breve c8 a g4 g2
    c\breve a8 a g4 g2
    \cadenzaOff
  }
}
bassmelody = \relative f {
  \repeat volta 2 {
    \key a \minor
    \time 2/4
    a,8 b16\melisma c\melismaEnd d8 d
    a4 a8 g
    c d e e
    a,4 a
  }
  \alternative {
    {
      c4 d
      e2
      b4 d
      a2
    }
    {
      c4 d8 d
      e2
      b8 b d4
      a2
    }
  }
  \repeat volta 2 {
    \cadenzaOn
    a\breve c8 d e4 e2
    c\breve d8 b e4 e2
    \cadenzaOff
  }
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  \repeat volta 2 {
    Ca -- ła zie -- mio wo -- łaj
    z_ra -- do -- ści na cześć Pa -- na,
  }
  \alternative {
    { ra -- duj się, we -- sel się. }
    { al -- le -- lu -- ja, al -- le -- lu -- ja. }
  }
  "Śpiewajcie Pa" -- \markup \bold \underline nu pieśń no -- wą,
  "albowiem u" -- \markup \bold \underline czy -- nił cu -- da.
  "Zwycięstwo mu zgotowała Je" -- go pra -- wi -- ca
  "i święte" ra -- mię Je -- go.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
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
    \new Lyrics = sopranolyrics \lyricsto soprano \text

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
