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
  \new Voice \relative f {
    \voiceOne
  }
  \new Voice \relative f {
    \voiceTwo
  }
>>
