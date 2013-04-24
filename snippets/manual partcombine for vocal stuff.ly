\version "2.17.10"

unisono = {
  \hideNotes
  \omit Hairpin
  \omit DynamicText
  \omit DynamicTextSpanner
  \omit Slur
  \omit PhrasingSlur
}

razem = {
  \unHideNotes
}

dolny = {
  \unHideNotes
  \voiceTwo
  \omit Hairpin
  \omit DynamicText
  \omit DynamicTextSpanner
  \omit Slur
}

tenI = \relative f {
  r2 c'\p
  c c
  r c4\< c
  f4. f8\! f2
  d2\mf ( c4) c
  b4.( a8 g4) g4\dim
  a2  c2\p
  c c
  r d4\mf d
  e4. g8 g2
  \voiceOne g4\f(f2 e4~
  e d2 c4~
  c b2 a4~
  a4 g2) \oneVoice f4
  f4\dim ( e8 d e4) e
  g2 r
  R1
}

tenII = \relative f {
  \new Voice {
    \unisono
    r2 c'\p
    c c
    r c4\< c
    f4. f8\! f2
    d2\mf ( c4) c
    b4.( a8 g4) g4\dim
    a2
  } \razem  a2\p
  a a
  r a4\mf a
  c4. e8 e2
  <<
    \new Voice = ten {
      \dolny
      a,4\f(f' g, e'
      a, d g, c~
      c b2 a4~
      a4 g2)
      \unisono
      f4
      f4\dim ( e8 d e4) e
      g2 r
    }
    \new Lyrics \with { alignAboveContext = #"ook" }
    \lyricsto ten \lyricmode { la lal al la la l }
  >>
}


\new Staff = "ook" {
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  \key c \major
  \time 2/2
  <<
    \tenI
    \tenII
  >>
}
\addlyrics {
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
}