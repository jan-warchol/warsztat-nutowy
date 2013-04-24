\version "2.17.10"

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \oneVoice
     \new Voice {
       \hideNotes
       \oneVoice
       \omit Hairpin
       \omit DynamicText
       \omit DynamicTextSpanner
       \omit Slur
       \omit PhrasingSlur
       #music
     }
   #})

razem =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \unHideNotes
     \oneVoice
     #music
   #})

gorny =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \voiceTwo
     \new Voice = gorny {
       \voiceOne
       \omit Hairpin
       \omit DynamicText
       \omit DynamicTextSpanner
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
  \razem {
    r e'4\< e'
    a'4. a'8\! a'2
  }
  \unisono {
    d'2\mf ( c'4) c'
  }
  \gorny {
    d'1
  }
  \razem {
    c'2 c'\p
    c' c'
  }
  \gorny {
    e'1\mp
    g'2 e'
  }
  \gorny {
    a4\f f' g e'
    a d' g c'
  }
  \gorny {
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