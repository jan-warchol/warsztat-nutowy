\version "2.17.3"
#(set-global-staff-size 16.5)

\header	{
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  left-margin = 16 \mm
  right-margin = 15 \mm
  %top-markup-spacing #'basic-distance = 10
  %system-system-spacing #'basic-distance = 15
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative f' {
}
altomelody = \relative f' {
}
tenormelody = \relative f {
}
bassmelody = \relative f {
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
}

stanzas = {}
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
  >>
  \layout {
    indent = 0\cm
  }
}

\stanzas