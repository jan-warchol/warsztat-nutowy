\version "2.13.60"
\pointAndClickOff

sharedProperties = {
    \include "global.ily"
    \bar "|:"
    s1*8
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "Fine"
    s1*8
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \mark "D.C. al Fine"
  }

individualBreaks = {
    
  }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\score {
    \new ChoirStaff = choir
      <<
        \sopranoIStaffVar
        \sopranoILyricsVar
        \altoStaffVar
        \altoLyricsVar
        \tenorStaffVar
        \tenorLyricsVar
        \bassStaffVar
        \bassLyricsVar
      >>

    \header { piece = \markup \bold "chorus" }
        
    \layout { 
        \context {
            \Lyrics \consists "Tweak_engraver" 
                \override LyricText #'font-size = #0.75
              \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.2
              \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'basic-distance = #0
              \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'minimum-distance = #0
              \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #0
              \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'basic-distance = #0
              \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'minimum-distance = #0
          }
        \context {
            \RemoveEmptyStaffContext
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
                \override BarNumber #'stencil =
                      #(lambda (grob)
                         (let ((break-dir (ly:item-break-dir grob)))
                           (set! (ly:grob-property grob 'font-size)
                                 (if (= break-dir RIGHT)
                                     -1
                                     -3))
                           (ly:text-interface::print grob)))
          }
      }
  }
