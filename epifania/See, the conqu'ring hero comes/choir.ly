\version "2.13.45"
\pointAndClickOff
#(ly:set-option 'relative-includes #t)
% \include "italiano.ly"

#(set-global-staff-size 15.5)

\include "filename.ily"

scripture = " "

translation = \markup {
    \typewriter {
        \override #'(baseline-skip . 0)
        \column {
            \vspace #1.5
            \bold "See,       the conqu'ring hero    comes!     Sound     the trumpets, beat     the drums." \vspace #0.15
                  "Spójrzcie,     zwycięski  bohater nadchodzi! Zagrajcie [w] trąbki,   uderzcie [w] bębny."
                  \vspace #0.50
            \bold "Sports   prepare,      the laurel bring,       songs of triumph    to him sing!" \vspace #0.15
                  "Igrzyska przygotujcie,     laury  przynieście, pieśni   tryumfalne    mu  śpiewajcie!"
                  \vspace #0.50
            \bold "See,      the godlike       youth       advance!   Breathe     the flutes, and lead       the dance;" \vspace #0.15
                  "Spójrzcie,    bogom podobny młodzieniec nadchodzi! Dmuchnijcie [w] flety,  i   prowadźcie     taniec;"
                  \vspace #0.50
            \bold "myrtle  wreaths, and roses twine,   to deck   the hero's   brow divine." \vspace #0.15
                  "mitrowe wieńce   i   róże  plećcie, by nakryć     bohatera brew boską."
                  \vspace #1.25
            \bold "Canticorum iubilo  Regi    magno     psalite." \vspace #0.15
                  "Pieśni     radosne Królowi wielkiemu śpiewajcie."
                  \vspace #0.50
            \bold "Iam resultent         musica unda, tellus, sidera." \vspace #0.15
                  "Już niech rozbrzmiewa muzyką woda, ziemia, gwiazdy."
                  \vspace #0.50
            \bold "       Personantes organis, iubilate,     plaudite." \vspace #0.15
                  "[Przy] brzmiących  organach radujcie się, klaszczcie."
                  \vspace #1.5
          }
      }
  }
  
composerShort = "(Händel)"

\paper {
    page-count = #2
    % system-count = #
    indent = 0 \mm
    short-indent = 0 \mm
    top-margin = 5 \mm
    bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    system-system-spacing #'padding = 4
    markup-system-spacing #'stretchability = 5
    top-markup-spacing #'basic-distance = 0
    top-system-spacing #'basic-distance = 0
    top-system-spacing #'padding = 0
    last-bottom-spacing #'basic-distance = 0
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders3.ily"
  }

\header {
    \include "titles.ily"
   % poet = 
   % subsubtitle = 
   tagline = ##f
  }


\include "part I/part I choir.ly"
\include "part II/part II choir.ly"
\include "part III/part III choir.ly"
