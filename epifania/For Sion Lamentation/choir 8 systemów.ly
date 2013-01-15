\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { }

translation = \markup {
    \typewriter \small {
        \column {
            \vspace #0.5
            \bold "For Sion    lamentation make,      with words   that weep,  and tears that speak."
                  "Za  Syjonem lament      wznieście,      słowami płaczliwymi i   łzami wymownymi."
          %  \vspace #0.5
          }
      }
  }
  
composerShort = "(Händel)"

\paper {
    % page-count = #
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 0
    markup-system-spacing #'basic-distance = 21
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders.ily"
  }

\header {
    \include "titles.ily"
    subsubtitle = "(1747)"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    \repeat unfold 4 { s1.*6 \break }
  }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\score {
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
    
    \layout { 
        indent = 0 \mm
        short-indent = 0 \mm
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
          }
      }
  }
