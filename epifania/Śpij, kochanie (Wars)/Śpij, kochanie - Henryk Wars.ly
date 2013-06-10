\version "2.15.36"
#(set-global-staff-size 15.1)

\paper {
  indent = 10 \mm
}

\header {
  title = "Śpij, kochanie"
  composer = "Henryk Wars (1902-1977)"
  poet = "sł. Ludwik Starski"
  arranger = "opr. Włodzimierz Sołtysik"
  copyright = "przepisała: Aleksandra Woźniak"
}

\score {
  \new ChoirStaff
  <<
    \new Staff = sopran {
      \set Staff.instrumentName = "Sopran "
      \set Staff.shortInstrumentName = "S "
      \include "sopranMusic.ily"
    }

    \addlyrics \include "sopranWords.ily"

    \new Staff = alt {
      \set Staff.instrumentName = "Alt "
      \set Staff.shortInstrumentName = "A "
      \include "altMusic.ily"
    }
    \addlyrics \include "altWords.ily"

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "Tenor "
      \set Staff.shortInstrumentName = "T "
      \include "tenorMusic.ily"
    }
    \addlyrics \include "tenorWords.ily"

    \new Staff = basy {
      \set Staff.instrumentName = "Bas "
      \set Staff.shortInstrumentName = "B "
      \include "basMusic.ily"
    }
    \addlyrics \include "basWords.ily"
  >>

  \layout {
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \override Score.BarNumber #'self-alignment-X = #CENTER
  }
}
