\version "2.16.0"
#(set-global-staff-size 16)

\header	{
  title = "Alleluja. Chwalcie Pana"
  composer = "Wacław z Szamotuł"
}

\paper {
  
}

\include "sopran.ly"
\include "alt.ly"
\include "tenor.ly"
\include "bas.ly"
\include "tekst.ly"

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \key b \minor
      \sopran
    }
    \addlyrics \zwrotkaI
    \addlyrics \zwrotkaII

    \new Staff = alto {
      \key b \minor
      \alt
    }
    \addlyrics \zwrotkaI
    \addlyrics \zwrotkaII

    \new Staff = tenor {
      \clef "treble_8"
      \key b \minor
      \tenor
    }
    \addlyrics \zwrotkaI
    \addlyrics \zwrotkaII

    \new Staff = bass {
      \clef bass
      \key b \minor
      \bas
    }
    \addlyrics \zwrotkaI
    \addlyrics \zwrotkaII
  >>

  \layout {
    \context {
      \Score
      timing = ##f
      barAlways = ##t
      defaultBarType = ""
    }
    \context {
      \Staff \remove "Time_signature_engraver"
    }
  }
}