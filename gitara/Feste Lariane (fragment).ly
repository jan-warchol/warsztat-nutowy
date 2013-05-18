\version "2.17.2"

\paper {
  left-margin = 15 \mm
  right-margin = 15 \mm
  system-system-spacing #'basic-distance = 18
}

cv = \markup {
  \combine
  \override #'(thickness . 1.5)
  \translate #'(0.8 . -0.3)
  \draw-line #'(0 . 2.2)
  C5
}

#(define rhf rightHandFinger)

\new Staff <<
  \clef "G_8"
  \key a \minor
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \bar "|:"
  \new Voice \relative f, {
    \voiceOne
    \set Voice.beatStructure = #'(1 1 1 1 1 1)
    \set fingeringOrientations = #'(down)
    \set strokeFingerOrientations = #'(left)
    e32-\rhf #1
    \set strokeFingerOrientations = #'(up)
    \override StrokeFinger #'extra-offset = #'(0 . 3)
    e''-\rhf #4 e-\rhf #3 e-\rhf #2
    b e e e
    d fis fis fis
    b, fis' fis fis
    d gis gis gis
    b, gis' gis gis
    |
    a,,^\cv a'' a a
    c, a' a a
    e a a a
    c, a' a a
    e c' c c
    c, c' c c
    |
    d,, b'' b b
    d, b' b b
    f <a-1> a a
    d, a' a a
    f <gis-1> gis gis
    d gis gis gis
    |
    a,,^\cv a'' a a
    c, a' a a
    e a a a
    c, a' a a
    e a a a
    c, a' a a
  }
  \new Voice \relative f {
    \voiceTwo
    \set Voice.beatStructure = #'(2 2 2)
    \set fingeringOrientations = #'(down)
    \override Fingering #'extra-offset = #'(0 . 1)
    \override Fingering #'X-offset = #-1.2
    e,8 b'' d b d b
    a, c' e c e c
    d, <d'-3> <f-2> <d-3> <f-2> <d-3>
    a, c' e c e c
  }
>>

\layout {
  indent = 0
  \override Score.SpacingSpanner #'common-shortest-duration
  = #(ly:make-moment 1 16)

  \override Fingering #'font-size = #-6.5
  \override StrokeFinger #'font-size = #-2.5
  % i don't see why this shouldn't be default...
  \override Fingering #'staff-padding = #'()
  \override StrokeFinger #'staff-padding = #'()

  \override Staff.OctavateEight #'font-shape = #'roman
  \override Staff.OctavateEight #'font-size = #-3.3

  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
