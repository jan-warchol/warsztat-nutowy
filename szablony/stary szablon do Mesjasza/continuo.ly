\version "2.13.45"
\pointAndClickOff
\include "italiano.ly"

#(set-global-staff-size 20)

\include "filename.ily"
\bookOutputSuffix "continuo"

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
    instrument = "Basso continuo"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    
  }

\include "miscCommands.ily"
\include "continuoStruct.ily"

\score {
  <<
    \continuoStaffVar
    \context Staff = continuoStaff {
        \set Staff.instrumentName = "Basso continuo" 
        \unset Staff.shortInstrumentName 
      }
  >>
    
    \layout { 
        indent = 30 \mm
        % short-indent = \mm
        % system-count = #
        \context {
            \Score 
            \override BarNumber #'break-visibility = #'#(#f #t #t) 
            \override BarNumber #'self-alignment-X = 
                #(lambda (grob)
                   (let ((break-dir (ly:item-break-dir grob)))
                     (set! (ly:grob-property grob 'self-alignment-X)
                           (if (= break-dir RIGHT)
                               1
                               0))))
            \override BarNumber #'stencil =
            #(lambda (grob)
               (let ((break-dir (ly:item-break-dir grob)))
                 (set! (ly:grob-property grob 'font-size)
                       (if (= break-dir RIGHT)
                           -2
                           -4))
                 (ly:text-interface::print grob)))
          }
      }
  }
