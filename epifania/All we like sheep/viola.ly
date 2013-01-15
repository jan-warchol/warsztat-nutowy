\version "2.13.45"
\pointAndClickOff
\include "italiano.ly"

#(set-global-staff-size 20)

\include "filename.ily"
\bookOutputSuffix "altowka"

\paper {
    % page-count = #
    % top-margin = \mm
    % bottom-margin = \mm
    % top-markup-spacing #'basic-distance = 12
    % markup-system-spacing #'basic-distance = 20
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    % ragged-last-bottom = ##f
    % annotate-spacing = ##t
  }

\header {
    \include "titles.ily"
    instrument = "Viola"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    
  }

\include "miscCommands.ily"
\include "violaStruct.ily"

\score {
  <<
    \violaStaffVar
    \context Staff = violaStaff {
        \set Staff.instrumentName = "Viola" 
        \unset Staff.shortInstrumentName 
      }
  >>
    
    \layout { 
        % indent = \mm
        % short-indent = \mm
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
