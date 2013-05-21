\version "2.17.2"

\header {
  instrument = \markup { Obój }
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  left-margin = 15 \mm
  right-margin = 15 \mm
}

\score {
  \relative f' {
    \compressFullBarRests
    \clef G
    \key d \minor
    \time 3/4
    \bar "|."
  }
}