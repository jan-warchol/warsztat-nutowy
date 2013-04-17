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
  \bar ":|."
}
altomelody = \relative f' {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  \bar ":|."
}
tenormelody = \relative f {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  \bar ":|."
}
bassmelody = \relative f {
  \dynamicUp
  \key f \major
  \time 4/4
  \tempo 4=65
  \bar ":|."
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
}

%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \clef treble
      \new Voice = soprano {
        \sopranomelody
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \new Voice = alto {
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \text

    \new Staff = tenor {
      \clef "treble_8"
      \new Voice = tenor {
        \tenormelody
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \text

    \new Staff = bass {
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
