\version "2.13.60"
\pointAndClickOff

sharedProperties = {
    \include "global.ily"
    \bar "|:" s1*24 \bar "||"
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
        \sopranoIIStaffVar
        \sopranoIILyricsVar
      >>

    \header { piece = \markup \bold "chorus of virgins" }
    
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

\markup \line { 
    \general-align #Y #3 \bold \huge "**" 
    \general-align #Y #5 "Lub:" 
    \score {
      <<
        \new Staff \with { fontSize = #-2
                           \override StaffSymbol #'staff-space = #(magstep -2)
                           \override StaffSymbol #'thickness = #(magstep -2)  } 
          { 
            \key g \major
            \time 2/2
              <<
                \new Voice = ossia \relative c'' {
                    \voiceOne
                    d2 b4. ( c8 ) 
                    d2 g,2 
                    a8 ( [ b8 c8 d8 ] c4 ) b4 
                    a1 
                    d8 ( [ c8 d8 e8 ] d4 ) d4 
                    g2 d2
                  } 
                \new Voice = ossialow \relative c'' {
                    \voiceTwo
                    b2 g4. ( a8 ) | 
                    b2 d,2
                    fis8 ( [ g8 a8 b8 ] a4 ) g4 |
                    fis1
                    b8 ( [ a8 b8 c8 ] b4 ) b4
                    d2 b2
                  } 
              >>
          }
        \new Lyrics \lyricsto ossia {
            \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.25
            \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'basic-distance = #0
            \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'minimum-distance = #0
            \override LyricText #'font-size = #-2
            \override LyricText #'font-shape = #'italic
            Can -- ti -- co -- rum iu -- bi -- lo
            Re -- gi mag -- no psa -- li -- te. 
          } 
      >>
        \layout {
            indent = 0
            \context {
                \Score
                \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 2 8)
                \override NonMusicalPaperColumn #'full-measure-extra-space = #0 
              }
          }
      }
    \general-align #Y #1.5 \column {
        "ta wersja lepiej pasuje do łacińskiego tekstu,"
        "ale wymaga drobnych zmian w akompaniamencie."
        "Podobnie ma się rzecz w pierwszej części (t. 26)."
      }
}