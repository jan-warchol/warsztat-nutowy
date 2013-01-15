\version "2.13.45"
\pointAndClickOff
#(ly:set-option 'relative-includes #t)
% \include "italiano.ly"

#(set-global-staff-size 19)

\bookOutputName "wieksze"

scripture = " "

translation = \markup \tiny {
    \typewriter {
        \override #'(baseline-skip . 0)
        \column {
            \vspace #0.50
            \bold "See,       the conqu'ring hero    comes!     Sound     the trumpets, beat     the drums." \vspace #0.10
                  "Spójrzcie,     zwycięski  bohater nadchodzi! Zagrajcie [w] trąbki,   uderzcie [w] bębny."
                  \vspace #0.30
            \bold "Sports   prepare,      the laurel bring,       songs of triumph    to him sing!" \vspace #0.10
                  "Igrzyska przygotujcie,     laury  przynieście, pieśni   tryumfalne    mu  śpiewajcie!"
                  \vspace #0.30
            \bold "See,      the godlike       youth       advance!   Breathe     the flutes, and lead       the dance;" \vspace #0.10
                  "Spójrzcie,    bogom podobny młodzieniec nadchodzi! Dmuchnijcie [w] flety,  i   prowadźcie     taniec;"
                  \vspace #0.30
            \bold "myrtle  wreaths, and roses twine,   to deck   the hero's   brow divine." \vspace #0.10
                  "mitrowe wieńce   i   róże  plećcie, by nakryć     bohatera brew boską."
                  \vspace #0.30
            \bold "Canticorum iubilo  Regi    magno     psalite." \vspace #0.10
                  "Pieśni     radosne Królowi wielkiemu śpiewajcie."
                  \vspace #0.30
            \bold "Iam resultent         musica unda, tellus, sidera." \vspace #0.10
                  "Już niech rozbrzmiewa muzyką woda, ziemia, gwiazdy."
                  \vspace #0.30
            \bold "       Personantes organis, iubilate,     plaudite." \vspace #0.10
                  "[Przy] brzmiących  organach radujcie się, klaszczcie."
                  \vspace #0.50
          }
      }
  }
  
composerShort = "(Händel)"

\paper {
    page-count = #3
    % system-count = #
    indent = 0 \mm
    short-indent = 0 \mm
    top-margin = 5 \mm
    bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 0
    top-system-spacing #'basic-distance = 0
    top-system-spacing #'padding = 0
    last-bottom-spacing #'basic-distance = 0
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders4.ily"
  }

\header {
    \include "titles.ily"
   % poet = 
   % subsubtitle = 
   tagline = ##f
  }


\include "part I/part I choir.ly"
\include "part II/part II choir.ly"
\pageBreak
\include "part III/part III choir.ly"
