\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 15)

\include "filename.ily"

scripture = \markup { }

translation = \markup {
    \typewriter \small {
        \column {
            \vspace #0.75
            \bold "Jesus bleibet meine Freude,   meines Herzens Trost        und Saft,"
                  "Jezus jest    moją  radością, mojego serca   pocieszeniem i   esencją,"
            \bold "Jesus wehret allem Leide, Er ist  meines Lebens Kraft,"
                  "Jezus koi    każdy ból,   On jest mojego życia  siłą,"
            \bold "meiner Augen Lust       und Sonne,   meiner Seele Schatz  und Wonne;"
                  "moich  oczu  pożądaniem i   słońcem, mojej  duszy skarbem i   rozkoszą;"
            \bold "darum   laß ich Jesum nicht, aus dem Herzen und Gesicht."
                  "dlatego nie tracę Jezusa     z       serca  i   oczu."
          }
      }
  }
  
composerShort = "Bach"

\paper {
    page-count = #1
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 3.5
    markup-system-spacing #'basic-distance = 41
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders2.ily"
  }

\header {
    \include "titles.ily"
    subsubtitle = "(1723)"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    s2.*23 \break
  }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\score {
    \new ChoirStaff = choir
      <<
        \sopranoStaffVar
        \sopranoLyricsVar
        \sopranoRepeatLyricsVar
        \altoStaffVar
        \altoLyricsVar
        \altoRepeatLyricsVar
        \tenorStaffVar
        \tenorLyricsVar
        \tenorRepeatLyricsVar
        \bassStaffVar
        \bassLyricsVar
        \bassRepeatLyricsVar
      >>
    
    \layout { 
        indent = 0 \mm
        short-indent = 0 \mm
        % system-count = #
        \context {
            \Staff   
                \override BarLine #'space-alist =
                    #'((time-signature . (extra-space . 0.75))
                      (custos . (minimum-space . 2.0))
                      (clef . (minimum-space . 1.0))
                      (key-signature . (extra-space . 1.0))
                      (key-cancellation . (extra-space . 1.0))
                      (first-note . (fixed-space . 1))
                      (next-note . (minimum-fixed-space  . 1.2))
                      (right-edge . (extra-space . 0.0)))
              }
        \context {
            \Score 
                \override NonMusicalPaperColumn #'full-measure-extra-space = #0 
            \override BarNumber #'break-visibility = #'#(#f #t #t) 
            \override BarNumber #'self-alignment-X = 
                #(lambda (grob)
                   (let ((break-dir (ly:item-break-dir grob)))
                     (set! (ly:grob-property grob 'self-alignment-X)
                           (if (= break-dir RIGHT)
                               1
                               0))))
          }
      }
  }
