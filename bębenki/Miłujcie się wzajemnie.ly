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
  \set Timing.beamExceptions = #'()
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
  \set Timing.beamExceptions = #'()
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
  \set Timing.beamExceptions = #'()
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
  \set Timing.beamExceptions = #'()
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
  Mi -- \tweak #'X-offset #-0.4 łuj --
  \tweak #'X-offset #-0.4 cie się
  \tweak #'X-offset #-0.6 wza -- je --
  \tweak #'X-offset #-1.2 \markup \scale #'(0.9 . 1) mnie,
  tak \tweak #'X-offset #-0.4 jak
  \tweak #'X-offset #0 Ja
  \tweak #'X-offset #-0.75 \markup \scale #'(0.95 . 1) was u --
  \tweak #'X-offset #-0.2 mi -- ło --
  \tweak #'X-offset #-0.2 wa --
  \tweak #'X-offset #-0.5 łem.
  \set stanza = "1."
  \once \override LyricSpace #'minimum-distance = #1
  \tweak #'X-offset #-1.5
  \markup \scale #'(0.95 . 1) "Gdybym mówił językami ludzi i"
  \markup \bold \underline a -- nio -- łów,
  \tweak #'X-offset #-0.5 "a miłoś" --
  \markup \bold \underline ci bym
  \tweak #'X-offset #-0.5 nie
  \tweak #'X-offset #-2 miał,
}

secondverse = \lyricmode {
  \repeat unfold 16 \skip4
  \tweak #'X-offset #-1.5 "stałbym się jak miedź"
  \tweak #'X-offset #-3 \markup \bold \underline brzę -- czą -- ca
  \tweak #'X-offset #-0.5 albo
  \tweak #'X-offset #-3 \markup \bold \underline cym --
  \tweak #'X-offset #-1.5 bał
  \tweak #'X-offset #-1.5 \markup \scale #'(0.9 . 1) brzmią --
  \tweak #'X-offset #-0.2 cy.
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
    indent = 0\cm
  }
}

\stanzas