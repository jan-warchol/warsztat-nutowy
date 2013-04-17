\version "2.17.3"
#(set-global-staff-size 18)

\header {
  title = "Ojcze, daj mi Ducha"
  composer = "opracowanie: Jakub Tomalak"
  poet = "słowa i melodia tradycyjne"
}

\paper {
  %markup-system-spacing #'padding = -2
  %last-bottom-spacing #'basic-distance = 6
  %tagline = ##f
}
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
  c4 d2( c4)
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
  a4 bes2( a4)
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
  Oj -- cze, daj mi Du -- cha,
  Oj -- cze, daj mi Du -- cha,
  bym z_wdzięcz -- no -- ścią
  przy -- jął każ -- de u -- po -- ko -- rze -- nie,
  i prze -- ciw -- noś -- ci
  któ -- re przy -- cho -- dzą do mnie.
}

%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \clef treble
      \new Voice = soprano {
        \sopranomelody
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \text

    \new Staff = alto {
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \clef treble
      \new Voice = alto {
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \text

    \new Staff = tenor {
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \clef "treble_8"
      \new Voice = tenor {
        \tenormelody
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \text

    \new Staff = bass {
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \clef bass
      \new Voice = bass {
        \bassmelody
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \text
  >>
  \layout {
    indent = 0
  }
}
