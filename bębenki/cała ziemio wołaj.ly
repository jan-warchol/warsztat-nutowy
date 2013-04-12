\version "2.17.3"
#(set-global-staff-size 20)

\header	{
  title = "Cała ziemio"
  poet = "słowa: Ps 98"
  composer = "muzyka: Dawid Kusz OP"
  tagline = "skład nut ‒ Jan Warchoł (jan.warchol@gmail.com, 509 078 203)"
}

\paper {
  top-margin = 10 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm
  markup-system-spacing #'basic-distance = #13
  system-system-spacing #'basic-distance = #13
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \repeat volta 2 {
    \key a \minor
    \time 2/4
    e8^\mf a a g
    a4 \tweak Beam #'positions #'(2.5 . 2.8) a8 b
    \tweak Beam #'positions #'(3.2 . 3.2) c c b g
    a4^\< a
  }
  \alternative {
    {
      \tweak Beam #'positions #'(1.25 . 2.25)
      e8-\tweak #'X-offset #0.5 ^\f \melisma a\melismaEnd g\melisma fis\melismaEnd
      e2
      d8\melisma e\melismaEnd \tweak Beam #'positions #'(1.25 . 0.8) fis \melisma d\melismaEnd
      e2
    }
    {
      \tweak Beam #'positions #'(1.25 . 2.25)
      e8-\tweak #'X-offset #0.5 ^\f \melisma a\melismaEnd g fis
      e2
      d8 g fis4
      e2
    }
  }
  \bar "|."
  \overrideProperty #"Score.NonMusicalPaperColumn"
  #'line-break-system-details #`((Y-offset . 66))
  \repeat volta 2 {
    \cadenzaOn
    a\breve g8 fis e4 e2
    \bar "|"
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
    \bar "|"
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
    \bar "|"
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
    c d \tweak Beam #'positions #'(-2.6 . -2.6) e e
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
      c4 \tweak Beam #'positions #'(-2.8 . -2.8) d8 d
      e2
      b8 b d4
      a2
    }
  }
  \repeat volta 2 {
    \cadenzaOn
    a\breve c8 d e4 e2
    \bar "|"
    c\breve d8 b e4 e2
    \cadenzaOff
  }
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  \repeat volta 2 {
    Ca -- ła zie -- \tweak #'X-offset #-1 mio wo -- \tweak #'X-offset #-1.2 łaj
    z_ra -- do -- ści \tweak #'X-offset #-1 na \tweak #'X-offset #-1 \markup \scale #'(0.9 . 1) cześć \tweak #'X-offset #-0.2 Pa -- na,
  }
  \alternative {
    { ra -- duj się, we -- sel się. }
    { al -- le -- lu -- ja, al -- le -- lu -- ja. }
  }
  \tweak #'X-offset #-1.5 "Śpiewajcie Pa" --
  \tweak #'X-offset #-1.5 \markup \bold \underline nu
  \markup \scale #'(0.9 . 1) pieśń
  \tweak #'X-offset #0 no -- wą,
  \once \override LyricHyphen #'minimum-distance = #1
  \tweak #'X-offset #-0.5 "albowiem u" --
  \markup \bold \underline czy -- nił cu -- da.
}
secondverse = \lyricmode {
  \repeat unfold 27 \skip4
  \once \override LyricHyphen #'minimum-distance = #1
  \tweak #'X-offset #-1.5 \markup \scale #'(1 . 1)
  "Zwycięstwo mu zgotowała Je" --
  \tweak #'X-offset #-1.2 \markup \bold \underline go
  pra -- \tweak #'X-offset #0 wi -- ca
  \tweak #'X-offset #-0.5 "i święte"
  \markup \bold \underline ra -- mię Je -- go.
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1
    }
    \lyricsto soprano \text
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1
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
