\version "2.17.2"

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
  \bar "|:"
  \new Voice \relative f, {
    \voiceOne
    e32-\rhf #1 e''-\rhf #4 e-\rhf #3 e-\rhf #2
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
    <d,-3> b' b b
    <f-2> <a-1> a a
    <d,-3> a' a a
    <f-2> <gis-1> gis gis
    <d-3> gis gis gis
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
    e,8 b'' d b d b
    a, c' e c e c
    d, d' f d f d
    a, c' e c e c
  }
>>

\layout {
  indent = 0
  \override Score.SpacingSpanner #'common-shortest-duration
  = #(ly:make-moment 1 16)

  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
