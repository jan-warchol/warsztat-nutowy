\version "2.17.21"

\include "./guitar chords.ly"

\paper {
  markup-markup-spacing #'padding = #3
}

\markup "proste:"

\markup { \eMin \eMaj }
\markup { \bMinSeventh \bMajSeventh }
\markup { \cMaj \aMin }
\markup { \cMaj \cMajBassG }
\markup { \aMin \eMaj }

\markup "średnie:"

\markup { \aMaj \eMin }
\markup { \aMaj \aMin }
\markup { \aMaj \eMaj }
\markup { \aMinSeventh \eMajSeventh }
\markup { \cMajSeventh \dMinBassf }

\markup "trochę trudniejsze:"

\markup { \bMajSeventh \eMin }
\markup { \eMaj \cMaj }
\markup { \aMaj \dMaj }

\markup "dość trudne:"

\markup { \cMaj \gMajSeventh }
\markup { \bMajSeventh \gMajBassf }
\markup { \cMaj \gMajPinky }
\markup { \cMajBassG \gMaj }