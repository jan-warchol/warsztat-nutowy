\version "2.16.0"
#(set-global-staff-size 16)

\header	{
  title = "Alleluja. Chwalcie Pana"
  composer = "Wacław z Szamotuł"
}

\paper {
  
}

sopran = \relative f' {
  g4 fis d2 g \breathe
  g4 fis e fis
}

alt = \relative f' {
  
}

tenor = \relative f {
  
}

bas = \relative f {
  
}

tekst = \lyricmode {
  Al -- le -- lu -- ja.
  Chwal -- cie Pa -- na
}

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \key b \minor
      \sopran
    }
    \addlyrics \tekst

    \new Staff = alto {
      \key b \minor
      \alt
    }
    \addlyrics \tekst

    \new Staff = tenor {
      \clef "treble_8"
      \key b \minor
      \tenor
    }
    \addlyrics \tekst

    \new Staff = bass {
      \clef bass
      \key b \minor
      \bas
    }
    \addlyrics \tekst
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