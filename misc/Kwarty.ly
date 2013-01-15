\version "2.17.3"

\header	{
  title = "Praktyczna metoda włoskiego śpiewu"
  composer = "Nicola Vaccai (1790-1848)"
  piece = Kwarty
}

melody = \relative f' {
  \autoBeamOff
  \dynamicUp
  \clef treble
  \key g \major
  \time 2/4
  \tempo Adagio
  r4 d8^\p g8 | d8 g8 e8 a8 | g8 d16 r16
  a'8 e8 | a8 e8 a8^\< a8\!^\> | b8 fis8\! \breathe
  d8^\p g8 | d8 g8 e8 a8 | g8 d16 r16
  % altre volte... x4
  e8 a8^\< -> | fis8 b8-> g8\! c8-> | a4 \breathe
  d8^\mf a8 | b8 g8 a8^\> e16[ fis16] | g8\! r8
  e8 a8^\< -> | fis8 b8-> g8\! c8-> | a4^\mf \breathe
  d8 a8 | b8 g8^\p ^\> a8 e16[ fis16] | g4\! r4 \bar "|."
}

text =  \lyricmode {
  La -- scia_il | li -- do,_e_il ma -- re_in -- | fi -- do
  a sol -- | car tor -- na_il noc -- | chie -- ro,
  e pur | sa che men -- zo -- | gne -- ro
  al -- tre | vol -- te l'in -- gan -- | no,
  al -- tre | vol -- te l'in -- gan -- | no,
  al -- tre | vol -- te l'in -- gan -- | no,
  al -- tre | vol -- te l'in -- gan -- | no.
}

\score {
  \new Staff {
    \melody
  }
  \addlyrics \text

  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}
