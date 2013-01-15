\version "2.13.45"
\pointAndClickOff
\include "italiano.ly"

#(set-global-staff-size 14.5)

\include "filename.ily"
\bookOutputSuffix "partytura"

\paper {
    % page-count = #
    top-margin = 12 \mm
    bottom-margin = 14 \mm
    % left-margin = 12 \mm
    % right-margin = 13 \mm
    line-width = 185 \mm
    % top-markup-spacing #'basic-distance = 5
    % markup-system-spacing #'basic-distance = 40
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'stretchability = 30
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 8
    last-bottom-spacing #'stretchability = 60
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "JanekHeaders.ily"
  }

\header {
    \include "titles.ily"
    %tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
}

individualBreaks = {
    s1*7 \break
    s1*7 \break
    s1*8 \break 
}

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"
\include "violinIStruct.ily"
\include "violinIIStruct.ily"
\include "violaStruct.ily"
\include "continuoStruct.ily"

\score {
  <<
    \new StaffGroup = strings
      <<
        \violinIStaffVar
        \violinIIStaffVar
        \violaStaffVar
      >>
    \new ChoirStaff = choir
      <<
        \sopranoStaffVar
        \sopranoLyricsVar
        \altoStaffVar
        \altoLyricsVar
        \tenorStaffVar
        \tenorLyricsVar
        \bassStaffVar
        \bassLyricsVar
      >>
    \continuoStaffVar
  >>
    
    \layout { 
        indent = 2 \mm
        short-indent = 2 \mm
        system-count = #8
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
                           2
                           0))
                 (ly:text-interface::print grob)))
          }
      }
  }
