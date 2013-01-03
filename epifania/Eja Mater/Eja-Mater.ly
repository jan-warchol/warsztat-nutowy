\version "2.17.3"
#(set-global-staff-size 15.5)

\paper {
}

\header {
  title = "Eja, Mater"
  composer = "Antonín Dvořák"
}

\markup {
  \typewriter {
    \column {
      \bold
      "Eia, Mater, fons   amoris,  me sentire vim  doloris fac, ut   tecum  lugeam."
      "O,   Matko, źródło miłości, mi odczuć  siłę bólu    daj, abym z Tobą smucił się."
    }
  }
}

\score {
  \new ChoirStaff
  <<
    \new Staff = soprany {
      \clef treble
      \autoBeamOff
      \include "sopranoMusic.ily"
    }
    \addlyrics \include "sopranoWords.ily"

    \new Staff = alty {
      \clef treble
      \autoBeamOff
      \include "altoMusic.ily"
    }
    \addlyrics \include "altoWords.ily"

    \new Staff = tenory {
      \clef "treble_8"
      \autoBeamOff
      \include "tenorMusic.ily"
    }
    \addlyrics \include "tenorWords.ily"

    \new Staff = basy {
      \clef bass
      \autoBeamOff
      \include "bassMusic.ily"
    }
    \addlyrics \include "bassWords.ily"
  >>

  \layout {
    indent = 0
  }
}
