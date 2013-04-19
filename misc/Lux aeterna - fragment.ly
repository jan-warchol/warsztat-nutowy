\version "2.15.29"

#(set-global-staff-size 15)

\header {
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  indent = 0
  top-margin = 13 \mm
  bottom-margin = 6.5 \mm
  line-width = 177 \mm
  tagline = ##f
  page-count = #1
  ragged-last-bottom = ##f
  system-system-spacing #'minimum-distance = #17.5
  last-bottom-spacing #'minimum-distance = #10
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \relative f'' {
        \autoBeamOff
        \key d \minor
        R1
        R1
        r2 f2
        d4 g a,2
        bes4 bes8 bes c4.\melisma \autoBeamOn bes16 c
        d8 c16 d es8 d16 es f8 c f es \autoBeamOff \melismaEnd \mark #7
        d8 f, bes2 a4
        bes8 bes bes2 as8( [ g ) ]
        as4 ( \melisma \autoBeamOn g ) \autoBeamOff \melismaEnd g r
      }
      \addlyrics {
        cum san -- ctis Tu -- is in ae -- ter -- num,
        cum san -- ctis Tu -- is in ae -- ter -- num,
      }

      \new Staff \relative f' {
        \autoBeamOff
        \key d \minor
        es16[ f] es[ d] es[ f] d[ es] \autoBeamOn f \melisma \autoBeamOn g f es f g es f
        g8 as16 g f es d c b8 d g f
        es4. d8 c f g a \autoBeamOff \melismaEnd
        bes8 bes, es8.[ d16] c8 c f4~ \melisma \autoBeamOn
        f8 es16 d es f d es c8 d16 es f4~
        f8 bes,4 g'8 \autoBeamOff \melismaEnd f4 r
        R1
        r2 c'2
        as4 des e,2
      }
      \addlyrics {
        Tu -- is in ae -- ter -- num,
        cum san -- ctis,
        cum san -- ctis,
        cum san -- ctis Tu
      }

      \new Staff \relative f {
        \autoBeamOff
        \clef "G_8"
        \key d \minor
        es8 c as'4. f8 bes4~ \melisma \autoBeamOn
        bes4 as g8 a16 b c8 d
        es16 d c bes a 8 bes4 a8 bes c \autoBeamOff \melismaEnd
        d4 r r8 f,8 f f
        g16[ a] g[ f] g[ a] f[ g] \autoBeamOn a \melisma \autoBeamOn bes a g a bes g a \autoBeamOff \melismaEnd
        bes4 r r8 c8 c c
        d16[ es] d[ c] d[ es] c[ d] \autoBeamOn es16\melisma \autoBeamOn f es d es f d es
        f8 d e f g4 \autoBeamOff \melismaEnd f8[ e]
        f8 f, bes[ g] c4 r
      }
      \addlyrics {
        \skip4 num,
        in ae -- ter -- num,
        cum san -- ctis Tu -- is in ae -- ter -- num,
        cum san -- ctis Tu -- is in ae -- ter -- num,
        in ae -- ter -- num,
      }

      \new Staff \relative f {
        \autoBeamOff
        \clef F
        \key d \minor
        c4 c8 c d4. \melisma \autoBeamOn c16 d
        es8 d16 es f8 es16 f g8 f es d
        c8 d16 es f4. es8 d c
        bes8 g'16 f es c d es \autoBeamOff \melismaEnd f4 r4
        r2 f
        d4 g a,2
        bes4 bes8 bes c4. \melisma \autoBeamOn bes16 c
        d8 bes'16 a g8 f e g \autoBeamOff \melismaEnd c,4
        r2 r8 c c c
      }
      \addlyrics {
        is in ae -- ter -- num,
        cum san -- ctis Tu -- is in ae -- ter -- num,
        cum san -- ctis Tu -- is in ae -- ter -- num,
        cum san -- ctis
      }
    >>

    \new GrandStaff <<
      \new Staff = "up" \with { \consists "Mark_engraver" } <<
        \new Voice \relative f'' {
          \key d \minor
          \voiceOne
          R1
          R1
          r2 f2
          d4 g a,2
          bes4 bes8 bes c4. bes16 c
          d8 c16 d es8 d16 es f8 c f es \mark #7
          d8 f, bes2 a4
          bes8 bes bes2 as8(  g )
          as4_(  g )  g r
        }
        \new Voice \relative f' {
          \key d \minor
          \voiceTwo
          es16 f es d es f d es f  g f es f g es f
          g8 as16 g f es d c b8 d g f
          es4. d8 c f g a
          bes8 \change Staff = "down" \voiceOne bes,\change Staff = "up" \voiceTwo es8. d16 c8 c f4~
          f8 es16 d es f d es c8 d16 es f4~
          \showStaffSwitch
          f8 \change Staff = "down" \voiceOne bes,4 \change Staff = "up" \voiceTwo g'8  f4 r
          R1
          r2 c'2
          as4 des e,2
        }
      >>
      \new Staff = "down" <<
        \clef F
        \new Voice \relative f {
          \key d \minor
          \voiceOne
          es8 c as'4. f8 bes4~
          bes4 as g8 a16 b c8 d
          es16 d c bes a 8 bes4 a8 bes c
          d4 r r8 f,8 f f
          g16 a g f g a f g a  bes a g a bes g a
          bes8 s d4\rest r8 c8 c c
          d16 es d c d es c d es16 f es d es f d es
          f8 d e f g4  f8 e
          f8 f, bes g c4 r
        }
        \new Voice \relative f {
          \key d \minor
          \voiceTwo
          c4 c8 c d4.  c16 d
          es8 d16 es f8 es16 f g8 f es d
          c8 d16 es f4. es8 d c
          bes8 g'16 f es c d es  f4 r4
          r2 f
          d4 g a,2
          bes4 bes8 bes c4.  bes16 c
          d8 bes'16 a g8 f e g  c,4
          r2 r8 c c c
        }
      >>
    >>
  >>

  \layout {
    \set Score.currentBarNumber = #106 \bar ""
    \context {
      \Staff \remove Time_signature_engraver
    }

    \accidentalStyle #'Score "modern"
    \set Score.markFormatter = #format-mark-box-alphabet

    \set GrandStaff.fontSize = #1.5
    \override GrandStaff.StaffSymbol #'staff-space = #(magstep 1.5)
    \override GrandStaff.StaffSymbol #'thickness = #(magstep 1.25)
    \override Staff.BarLine #'hair-thickness = #(magstep 4)
  }
}