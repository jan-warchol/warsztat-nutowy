\version "2.17.3"

\layout {
  \context {
    \ChoirStaff
    \accepts "SopranoStaff"
  }
  \context {
    \Staff
    \type "Engraver_group"
    \name "SopranoStaff"
    \defaultchild "Voice"
    \accepts "Voice"
    \alias "Staff"
  }
}

\score {
  <<
    \new ChoirStaff = foo <<
      \new SopranoStaff = bar {
        b g
      }
      \new SopranoStaff = reb {
        b g
      }
      \new Staff = zum {
        c d e
      }
    >>
    \new Staff = plonk {
      d
    }
  >>
  \layout {
    \override Staff.Stem #'color = #green
    \override SopranoStaff.NoteHead #'color = #red
  }
}