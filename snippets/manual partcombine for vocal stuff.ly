\version "2.16.1"

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \oneVoice
     \new Voice {
       \override NoteColumn #'ignore-collision = ##t
       \hideNotes
       \oneVoice
       \override Hairpin #'stencil = ##f
       \override DynamicText #'stencil = ##f
       \override DynamicTextSpanner #'stencil = ##f
       \override Slur #'stencil = ##f
       \override PhrasingSlur #'stencil = ##f
       #music
     }
   #})

rownyRytm =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \unHideNotes
     \oneVoice
     #music
   #})

podzial =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \voiceTwo
     \new Voice  {
       \voiceOne
       \override Hairpin #'stencil = ##f
       \override DynamicText #'stencil = ##f
       \override DynamicTextSpanner #'stencil = ##f
       \override TextScript #'stencil = ##f
       #music
     }
   #})

tenII = {
  r2 c'\p
  c' c'
  r c'4\< c'
  f'4. f'8\! f'2
  d'2\mf ( c'4) c'
  b4.( a8 g4) g4\dim
  a2
  a2\p
  a a
  r a4\mf a
  c'4. e'8 e'2
  a4\f(f' g e'
  a d' g c')
  c' b2 a4
  a4 g2 f4
  f4\dim ( e8 d e4) e
  g2 r
}

tenI = {
  \unisono {
    r2 c'\p
    c' c'
  }
  \rownyRytm {
    r e'4\< e'
    a'4. a'8\! a'2
  }
  \unisono {
    d'2\mf ( c'4) c'
  }
  \podzial {
    d'1
  }
  \rownyRytm {
    c'2 c'\p
    c' c'
  }
  \podzial {
    e'1\mp
    g'2 e'
    a4\f f' g e'
    a d' g c'
  }
  \podzial {
    c'2 d'
    b a
  }
  \unisono {
    f4\dim ( e8 d e4) e
    g2 r
  }
}


\new Staff = "tenors" {
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

\markup "real-life example:"

tenorI = \relative f {
  \unisono {
    r2 c'\p
    c c
    r c4\< c
    f4. f8\! f2
    d2\mf ( c4) c
    b4.( a8 g4) g4\dim
    a2
  }
  \rownyRytm {
    c2\p
    c c
    r d4\mf d
    e4. g8 g2
  }
  \podzial {
    g4\f(f2 e4~
    e d2 c4~
    c b2 a4~
    a4 g2)
  }
  \unisono {
    f4
    f4\dim ( e8 d e4) e
    g2 r
    R1
  }
}

tenorII = \relative f {
  r2 c'\p
  c c
  r c4\< c
  f4. f8\! f2
  d2\mf ( c4) c
  b4.( a8 g4) g4\dim
  a2 a2\p
  a a
  r a4\mf a
  c4. e8 e2
  a,4\f(f' g, e'
  a, d g, c~
  c b2 a4~
  a4 g2)
  f4
  f4\dim ( e8 d e4) e
  g2 r
}


\new Staff = "tenors" {
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  \key c \major
  \time 2/2
  <<
    \tenorI
    \tenorII
  >>
}
\addlyrics {
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
  Os ju -- sti me -- di -- ta -- bi -- tur
  sa -- pi -- en -- ti -- am,
}
