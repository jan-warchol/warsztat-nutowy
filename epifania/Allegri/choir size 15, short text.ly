\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 15)

\include "filename.ily"
\bookOutputSuffix "size 15, distributed"

scripture = \markup { \column { "Ps 51 (50)" " " } }

translation = \markup { }
  
composerShort = "(Allegri)"

\paper {
   % paper-width = 100 \cm
   % ragged-right = ##t
    
    page-count = #8
    system-count = #31
    indent = 9 \mm
    short-indent = 0 \mm
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 5
    markup-system-spacing #'basic-distance = 4
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    system-system-spacing #'basic-distance = 0
    system-system-spacing #'padding = 0
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders3.ily"
  }

\header {
    \include "titles.ily"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }
  
parenthesizedchoirI = { 
    \once \override Score.RehearsalMark #'self-alignment-X = #-2.1
    \mark \markup \normalsize \bold { "(chór I)" } 
  }
  
\include "translation.ily"

position =
#(define-music-function
     (parser location Y-offset)
     (number?)
   #{
     \overrideProperty #"Score.NonMusicalPaperColumn"
            #'line-break-system-details #`((Y-offset . ,$Y-offset))
   #})

  
individualBreaks = {
    \overrideProperty #"Score.NonMusicalPaperColumn" 
    #'line-break-system-details #'((Y-offset . 15)
                                   (alignment-distances . (10 10 10 10 12.5 11 9 9 9.5)))
    \verseI s1*2*6 \break \noPageBreak \position #130 \parenthesizedchoirI s1*2*6 \break \noPageBreak  
    \position #189 \verseII s1*2*2 \pageBreak  
    \position #3 \verseIII s1*2*7 \break \position #63.5 s1*2*7 \break 
    \position #115.5 \verseIV s1*2*2  \break 
    \position #139 \verseV s1*2*5 \break \position #8 s1*2*7 \break 
    \position #72.5 \verseVI s1*2*2 \break   
    \position #100 \verseVII s1*2*6 \break \position #161 s1*2*7 \break 
    \position #6 \verseVIII s1*2*2  \break
    \position #35.5 \verseIX s1*2*5 \break \position #113 s1*2*7 \break 
    \position #178 \verseX s1*2*2 \break   
    \position #4 \verseXI s1*2*6 \break \position #66 s1*2*7 \break 
    \position #118.5 \verseXII s1*2*2 \break
    \position #145 \verseXIII s1*2*5 \break \position #3 s1*2*7 \break 
    \position #61.5 \verseXIV s1*2*2 \break   
    \position #85 \verseXV s1*2*6 \break \position #143 s1*2*7 \break 
    \position #192 \verseXVI s1*2*2  \break
    \position #1.5 \verseXVII s1*2*4 s1 \break \position #72.5 s1 s1*2*7 \break 
    \position #133 \verseXVIII s1*2*2 \break   
    \position #158 \verseXIX s1*2*6 \break \position #3 s1*2*7 \break 
    \position #49.5 \verseXX s1*2*5 \break 
    \position #115 
  }
  
alignleft = { \once \override LyricText #'self-alignment-X = #-1 }
psalmodia = { \once \override Staff.NoteHead #'style = #'altdefault }
\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\score {
  <<
    \new ChoirStaff = choir
      <<
        \set ChoirStaff.instrumentName = \markup { \rotate #90 \column { \bold \huge "      chór I" \vspace #1.8 } }
        \choirSopranoIStaffVar
        \choirSopranoILyricsVar
        \choirSopranoIIStaffVar
        \choirSopranoIILyricsVar
        \choirAltoStaffVar
        \choirAltoLyricsVar
        \choirTenorStaffVar
        \choirTenorLyricsVar
        \choirBassStaffVar
        \choirBassLyricsVar
      >>
    \soloTenorStaffVar
    \soloTenorLyricsVar
    
    \new ChoirStaff = concertans
      <<
        \set ChoirStaff.instrumentName = \markup { \rotate #90 \column { \bold \huge "chór II" \vspace #1.8 } }
        \soloSopranoIStaffVar
        \soloSopranoILyricsVar
        \soloSopranoIIStaffVar
        \soloSopranoIILyricsVar
        \soloAltoStaffVar
        \soloAltoLyricsVar
        \soloBassStaffVar
        \soloBassLyricsVar
      >>
  >>
    \layout { 
        \context {
            \RemoveEmptyStaffContext
          }
        \context {
            \Lyrics \consists "Tweak_engraver"
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
            \override SpacingSpanner
            #'common-shortest-duration = #(ly:make-moment 1320 1024 )
                \override BarNumber #'outside-staff-priority = ##f
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
