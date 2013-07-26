\version "2.17.21"

\include "./guitar chords.ly"

\paper {
  markup-markup-spacing #'padding = #3
}

\markup "proste:"

\markup { \eMin \hspace #3 \eMaj }
\markup { \bMinSeventh \hspace #3 \bMajSeventh }
\markup { \cMaj \hspace #3 \aMin }
\markup { \cMaj \hspace #3 \cMajBassG }
\markup { \aMin \hspace #3 \eMaj }

\markup "średnie:"

\markup { \aMaj \hspace #3 \eMin }
\markup { \aMaj \hspace #3 \aMin }
\markup { \aMaj \hspace #3 \eMaj }
\markup { \aMinSeventh \hspace #3 \eMajSeventh }
\markup { \cMajSeventh \hspace #3 \dMinBassf }

\markup "trochę trudniejsze:"

\markup { \bMajSeventh \hspace #3 \eMin }
\markup { \eMaj \hspace #3 \cMaj }
\markup { \aMaj \hspace #3 \dMaj }

\markup "dość trudne:"

\markup { \cMaj \hspace #3 \gMajSeventh }
\markup { \bMajSeventh \hspace #3 \gMajBassf }
\markup { \cMaj \hspace #3 \gMajPinky }
\markup { \cMajBassG \hspace #3 \gMaj }