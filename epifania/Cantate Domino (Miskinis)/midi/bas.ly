\version "2.16.1"

bas = { \include "../bas.ily" }

\score {
  \keepWithTag #'solo \bas
  \midi {}
}
