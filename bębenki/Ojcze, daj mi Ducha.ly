\version "2.17.3"
#(set-global-staff-size 20)

\header {
  title = \markup \column {
    "Ojcze, daj mi Ducha" " "
  }
  composer = "opracowanie: Jakub Tomalak"
  poet = "słowa i melodia tradycyjne"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  system-count = 3
  left-margin = 19 \mm
  right-margin = 17 \mm
  %ragged-last-bottom = ##f
  top-markup-spacing #'basic-distance = 6
  last-bottom-spacing #'basic-distance = 11
  system-system-spacing #'basic-distance = #15
  #(define fonts
     (make-pango-font-tree
      "Minion Pro"
      "Liberation Sans"
      "Liberation Mono"
      (/ staff-height pt 20)))
}

m = #(define-music-function (parser location off) (number?)
       #{
         \once \override Lyrics.LyricText #'X-offset = #off
       #})
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  f2 c'4 bes8 a
  f4 f2.
  f2 c'4 bes8 a
  f4 f4~ f8 r bes8 a
  g4 g2 g8 a
  bes2 f8 f f g
  a2( g)
  \break
  f2 r8 a bes a
  g4 g2.
  bes2 f8 f f g
  f4 f2.
  \bar ":|"
}
altomelody = \relative f' {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  c2 c4 c8 c
  c4( d2) c4
  d2 c4 c8 c
  c4 d4~ d8 r f f
  e( f) e2 e8 c
  d2 d8 d d d
  f2( c)
  d2 r8 f8 f f
  d4 d2.
  d2 d8 d d e
  e4.( d8) c2
  \bar ":|"
}
tenormelody = \relative f {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  a2 a4 a8 a
  a4( bes2) a4
  a4( g) f f8 f
  f( g) a4~ a8 r bes8 c
  g4 g2 g8 f
  f2 f8 g a bes
  c4( d2 a8 g)
  a2 r8 c d c
  bes4 bes2.
  bes8( a g f) bes bes bes bes
  c4.( bes8) a2
  \bar ":|"
}
bassmelody = \relative f {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  f2 e4 e8 e
  d2( c4) c
  bes2 a4 a8 a
  bes4 bes~ bes8 r8 g a
  c4 c2 c8 a8
  g4.( a8) bes8 bes bes bes
  f'2( e)
  d2 r8 c8 c c
  g4 g2.
  bes4( g) c8 c c c
  f4 f2.
  \bar ":|"
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  Oj -- \m #-0.8 cze, daj mi Du -- cha,
  Oj -- cze, daj mi Du -- cha,
  \m #-2.2 \markup \scale #'(0.96 . 1) bym
  \m #-2.0 \markup \scale #'(0.94 . 1) "z wdzię" --
  czno -- ścią
  przy -- jął każ -- de u -- po -- ko -- rze -- nie,
  i prze -- ciw -- no -- ści
  któ -- re przy -- cho -- dzą do __ \m #-1.5 mnie.
}
soptext = \lyricmode {
  \skip4 \skip4 \skip4 \skip4
  Du -- cha,
  \repeat unfold 29 \skip4  do \m #-1.5 mnie.
}
bastext = \lyricmode {
  \repeat unfold 35 \skip4  do \m #-1.5 mnie.
}

%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics \with {
      alignAboveContext = women
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'basic-distance = #0
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.5
    }
    \lyricsto soprano \soptext
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1
    }
    \lyricsto alto \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'basic-distance = #0
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.3
    }
    \lyricsto bass \bastext
  >>
  \layout {
    indent = 0
    \override LyricText #'font-name =
    #"Minion Pro Medium Condensed"
  }
}
