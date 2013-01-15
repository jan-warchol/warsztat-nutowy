\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { "Iz 53, 6" " " } }

translation = \markup {
    \typewriter {
        \column {
            \vspace #3
            \bold "All      we, like sheep, have gone astray, we have turned ev'ry one   to his    own     way;"
                  "Wszyscy (my) jak  owce   pobłądziliśmy,       obrócił się każdy z nas ku swojej własnej drodze, "
                  " "
            \bold "and the Lord hath laid   on Him   the iniquity    of us  all."
                  "a       Pan       zwalił na Niego     nieprawości    nas wszystkich."
            \vspace #2
          }
      }
  }
  
composerShort = "(Händel)"

\paper {
    page-count = #5
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 7.5
    markup-system-spacing #'basic-distance = 37
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders.ily"
  }

\header {
    \include "titles.ily"
    subsubtitle = "(1742)"
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    
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
        system-count = #19
        \context {
            \Lyrics 
                \override LyricText #'font-size = #0
                \consists "Tweak_engraver"
          }
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
