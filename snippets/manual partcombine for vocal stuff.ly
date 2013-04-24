\version "2.17.10"

unisono =
#(define-music-function (parser location music)
   (ly:music?)
   #{
     \oneVoice
     \new Voice {
       \override NoteColumn.ignore-collision = ##t
       \hideNotes
       \oneVoice
       \omit Hairpin
       \omit DynamicText
       \omit DynamicTextSpanner
       \omit Slur
       \omit PhrasingSlur
       #music
     }
     \revert NoteColumn.ignore-collision
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
       \omit Hairpin
       \omit DynamicText
       \omit DynamicTextSpanner
       #music
     }
   #})

zTekstem =
#(define-music-function (parser location name staff music text)
   (string? string? ly:music? ly:music?)
   #{
     \voiceTwo
     <<
       \new Voice = #name {
         \voiceOne
         \omit Hairpin
         \omit DynamicText
         \omit DynamicTextSpanner
         #music
       }
       \new Lyrics \with { alignAboveContext = #staff }
       \lyricsto #name \lyricmode { #text }
     >>
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
  \zTekstem foo tenors {
    e'1\mp
    g'2 e'
    a4\f f' g e'
    a d' g c'
  }
  \lyricmode { ho ho ho fa la __ _ _ lo lo la __ _ }
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