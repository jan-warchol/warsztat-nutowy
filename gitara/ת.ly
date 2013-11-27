\header {
  title = "ת"
  composer = "Michał Gawroński"
}

\new Staff {
  \clef "treble_8"
  \key e \minor
  <<
    \new Voice {
      \voiceOne
      \relative fis' {
        e8 e fis g e4 e8 g |
        fis4 fis8 a g fis e d |
        e8 e fis g g4 g8 a |
        a4 fis g8 fis e fis |
        e8 e fis g a4 e8 a |
        g8 \prall fis e fis g8 fis e fis |
        g8. fis16 g8 a g8 fis g a |
        a8. g16 fis8 e g8 g e d |
        e1 |
      }
    }
    \new Voice {
      \voiceTwo
      \relative fis, {
        e2 c' |
        d2 b |
        c2 g |
        b2 c |
        e,2 c' |
        d2 b |
        c2 g |
        b2 c |
        e,1 |
      }
    }
  >>
}