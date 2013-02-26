\version "2.16.1"

tenor = { \include "../tenor.ily" }

\score {
  \keepWithTag #'solo \tenor
  \midi {}
}
