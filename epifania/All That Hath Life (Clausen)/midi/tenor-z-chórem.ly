\version "2.16.1"

sopran = { \include "../sopran.ily" }
alt = { \include "../alt.ily" }
tenor = { \include "../tenor.ily" }
bas = { \include "../bas.ily" }

\score {
  <<
    \keepWithTag #'chor \sopran
    \keepWithTag #'chor \alt
    \keepWithTag #'solo \tenor
    \keepWithTag #'chor \bas
  >>
  \midi {}
}
