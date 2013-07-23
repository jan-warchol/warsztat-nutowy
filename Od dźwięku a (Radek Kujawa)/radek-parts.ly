\version "2.17.21"
% 72 minuty. AAAARGH!!

\include "./radek-content.ly"

%#(set-global-staff-size 17)

\paper {
}

\book {
  \bookOutputName "radek-violin"
  \new Staff {
    \global
    \violinnotes
  }
}
\book {
  \bookOutputName "radek-clarinet"
  \new Staff {
    \global
    \clarinetnotes
  }
  \paper {
    system-count = 3
  }
}
\book { 
  \bookOutputName "radek-bass"
  \new Staff {
    \global
    \bassnotes
  }
}

\book {
  \bookOutputName "radek-accordion"
  \new PianoStaff <<
    \new Staff {
      \global
      \accupnotes
    }
    \new Dynamics {
      \accdynamics
    }
    \new Staff {
      \global
      \accdownnotes
    }
  >>
  \paper {
    system-count = 2
  }
}