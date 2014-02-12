\version "2.17.3"

\header	{
  title = \markup \column { "Miłujcie się wzajemnie" " " }
  poet = "słowa: 1 Kor 13, 1-13"
  composer = "muzyka: U. Rogala"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

#(ly:set-option 'strokeadjust #t)
#(set-global-staff-size 18)

\paper {
  indent = 2 \mm
  short-indent = 2 \mm
  left-margin = 15 \mm
  right-margin = 15 \mm
  bottom-margin = 10 \mm
  top-markup-spacing #'basic-distance = #9
  markup-system-spacing #'basic-distance = 16
  last-bottom-spacing #'basic-distance = #12
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
    d4 c8
    \newSpacingSection
    \override Score.SpacingSpanner #'spacing-increment = #1.5
    c8
    \newSpacingSection
    \override Score.SpacingSpanner #'spacing-increment = #0
    e16 d
    \revert Score.SpacingSpanner #'spacing-increment
    \newSpacingSection
    c8
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

m = #(define-music-function (parser location off) (number?)
       #{
         \once \override Lyrics.LyricText #'X-offset = #off
       #})

text =  \lyricmode {
  Mi -- \m #-0.4 łuj --
  \m #-0.4 cie się
  \m #-0.6 wza -- je --
  \m #-1.2 \markup \scale #'(0.9 . 1) mnie,
  tak \m #-0.4 jak
  \m #0 Ja
  \m #-0.75 \markup \scale #'(0.95 . 1) was u --
  \m #-0.2 mi -- ło --
  \m #-0.2 wa --
  \m #-0.5 łem.
  \set stanza = "1."
  \once \override LyricSpace #'minimum-distance = #1
  \m #-1.5
  \markup \scale #'(0.95 . 1) "Gdybym mówił językami ludzi i"
  \markup \bold \underline a -- nio -- łów,
  \m #-0.5 "a miłoś" --
  \markup \bold \underline ci bym
  \m #-0.5 nie
  \m #-2 miał,
}

secondverse = \lyricmode {
  \repeat unfold 16 \skip4
  \m #-1.5 "stałbym się jak miedź"
  \m #-3 \markup \bold \underline brzę -- czą -- ca
  \m #-0.5 albo
  \m #-3 \markup \bold \underline cym --
  \m #-1.5 bał
  \m #-1.5 \markup \scale #'(0.9 . 1) brzmią --
  \m #-0.2 cy.
}

stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \set Staff.instrumentName = \markup \center-column { S A }
      \set Staff.shortInstrumentName = \markup \center-column { S A }
      \new Voice = soprano {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \override Ambitus #'X-offset = #1.7

        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f

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
      \set Staff.instrumentName = \markup \center-column { T B }
      \set Staff.shortInstrumentName = \markup \center-column { T B }
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f
        \override Ambitus #'X-offset = #1.7

        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \set Voice.midiInstrument = "clarinet"
        \dynamicDown

        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    \override NoteHead #'style = #'altdefault

    \context {
      \Voice
      \consists "Ambitus_engraver"
    }
    \context {
      \Lyrics
      \override LyricText #'stencil =
      #(lambda (grob)
         (ly:stencil-scale (lyric-text::print grob) 1 1))
      \override VerticalAxisGroup
      #'nonstaff-relatedstaff-spacing #'padding = #0.7
    }
  }

}

\stanzas
