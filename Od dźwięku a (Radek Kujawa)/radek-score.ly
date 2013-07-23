\version "2.17.21"
% 72 minuty. AAAARGH!!

\include "./radek-content.ly"

#(set-global-staff-size 17)

\paper {
  indent = 0
  system-count = 3
  top-markup-spacing #'basic-distance = #4
  last-bottom-spacing #'basic-distance = #10
  ragged-last-bottom = ##f
}

\score {
  <<
    \new Staff {
      \global
      \violinnotes
    }
    \new Staff {
      \global
      \clarinetnotes
    }
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
    \new Staff {
      \global
      \bassnotes
    }
  >>
  \layout {
    \override Score.SpacingSpannerr.uniform-stretching = ##t
    % \override Score.SpacingSpanner
    % #'common-shortest-duration =
    % #(ly:make-moment 1 32)
  }
}
