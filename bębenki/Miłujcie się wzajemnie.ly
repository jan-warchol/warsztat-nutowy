\version "2.17.3"
#(set-global-staff-size 18)

\header	{
  title = "Miłujcie się wzajemnie"
  poet = "słowa: 1 Kor 13, 1-13"
  composer = "muzyka: U. Rogala"
}

\paper {
  paper-width = 165 \mm
  paper-height = 240 \mm
  line-width = 145 \mm
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  \key f \major
  \time 3/4
  \repeat volta 2 {
    \partial 8 e,8 |
    f4 f g8 a | f4 f
    g8 f |
    e4 e8 e f e |
    d4 d4.
  }
  \noBreak
  \oneVoice r8 \voiceOne
  %inset appropriate bar here (finish/repeat)
  \cadenzaOn
  \repeat volta 2 {
    a'\breve g8 e4 e
    \bar "dashed"
    f\breve e8 c d4 d
  }
  \cadenzaOff
}
altomelody = \relative f' {
  \key f \major
  \time 3/4
  \repeat volta 2 {
    \partial 8 c8
    d[ e] d4 c8 c | d8 c c4
    d8 d |
    % m. 3
    d4 c8 c8 e16 d c8
    % m. 4
    c4 bes4.
  }
  \noBreak
  s8
  %inset appropriate bar here (finish/repeat)
  \cadenzaOn
  \repeat volta 2 {
    d\breve d8 c4 c
    \bar "dashed"
    d\breve c8 c bes4 bes
  }
  \cadenzaOff
}
tenormelody = \relative c' {
  \key f \major
  \time 3/4
  \repeat volta 2 {
    \partial 8 g8
    f4 f8 g16 f e8 f16 g | a4 a
    bes8 a | g a g g g g
    f8. e16 f4.
  }
  \noBreak
  \oneVoice r8 \voiceOne
  %inset appropriate bar here (finish/repeat)
  \cadenzaOn
  \repeat volta 2 {
    f\breve f8 g4 g
    \bar "dashed"
    f\breve g8 g f4 f
  }
  \cadenzaOff
}
bassmelody = \relative f {
  \key f \major
  \time 3/4
  \repeat volta 2 {
    \partial 8 c8
    bes4 bes a8 a | d e f a
    g d | c4 c8 c c c
    bes4 bes4.
  }
  \noBreak
  s8
  %inset appropriate bar here (finish/repeat)
  \cadenzaOn
  \repeat volta 2 {
    bes\breve bes8 bes4 bes
    \bar "dashed"
    bes\breve bes8 bes bes4 bes
  }
  \cadenzaOff
}
akordy = \chordmode {
  s8 bes2 a4:m d:m f
  g4:m c2.
  bes2. bes
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Mi -- łuj -- cie się wza -- je -- mnie,
  tak jak Ja was u -- mi -- ło -- wa -- łem.
  \set stanza = "1."
  "Gdybym mówił językami ludzi i"
  \markup \bold \underline a -- nio -- łów,
  "a miłoś" --
  \markup \bold \underline ci bym nie miał,
  "stałbym się jak miedź"
  \markup \bold \underline brzę -- czą -- ca
  albo
  \markup \bold \underline cym -- bał brzmią -- cy.
}

stanzas = \markup {
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
    \new Lyrics \lyricsto soprano \text

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
    indent = 0\cm
  }
}

\stanzas