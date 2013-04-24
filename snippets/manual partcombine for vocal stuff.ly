\version "2.17.10"

tenI = \relative f {
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  \key c \major
  \time 2/2
  
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

%{

  \override Dots #'stencil = ##f
  \override NoteHead #'stencil = ##f
  \override NoteHead #'no-ledgers = ##t
  \override Stem #'stencil = ##f
  \override Flag #'stencil = ##f
  \override Beam #'stencil = ##f
  \override Accidental #'stencil = ##f
  \override Rest #'stencil = ##f
  \override TabNoteHead #'stencil = ##f
%}

bum = {
  \hideNotes
  \override Hairpin #'stencil = ##f
  \override DynamicText #'stencil = ##f
  \override DynamicTextSpanner #'stencil = ##f
  \override Slur #'stencil = ##f
}


tenII = \relative f {
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  \key c \major
  \time 2/2
  
  \new Voice {
    \bum
    r2 c'\p
    c c
    r c4\< c
    f4. f8\! f2
    d2\mf ( c4) c
    b4.( a8 g4) g4\dim
    a2
  } \undo \bum  a2\p
  a a
  r a4\mf a
  c4. e8 e2
  <<
    \new Voice = ten {
      \voiceTwo
      a,4\f(f' g, e'
      a, d g, c~
      c b2 a4~
      a4 g2)
      \bum
      f4
      f4\dim ( e8 d e4) e
      g2 r
    }
    \new Lyrics \with { alignAboveContext = #"ook" }
    \lyricsto ten \lyricmode { la lal al la la l }
  >>
}



\new Staff = "ook" {
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