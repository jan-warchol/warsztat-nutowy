\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 16)

\include "filename.ily"
\bookOutputSuffix "size 16, distributed"

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
    bottom-margin = 4 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 4
    markup-system-spacing #'basic-distance = 4
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 10
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
    #'line-break-system-details #'((Y-offset . 11)
                                   (alignment-distances . (10 10 10 10 12.5 11 9 9 9.5)))
    \verseI s1*2*6 \break \noPageBreak \position #124 \parenthesizedchoirI s1*2*6 \break \noPageBreak  
    \position #180 \verseII s1*2*2 \pageBreak  
    \position #2 \verseIII s1*2*7 \break \position #59.5 s1*2*7 \break 
    \position #108.5 \verseIV s1*2*2  \break 
    \position #130 \verseV s1*2*5 \break \position #5 s1*2*7 \break 
    \position #66.5 \verseVI s1*2*2 \break   
    \position #92.5 \verseVII s1*2*6 \break \position #153 s1*2*7 \break 
    \position #6 \verseVIII s1*2*2  \break
    \position #33 \verseIX s1*2*5 \break \position #108 s1*2*7 \break 
    \position #172 \verseX s1*2*2 \break   
    \position #2 \verseXI s1*2*6 \break \position #60.5 s1*2*7 \break 
    \position #111 \verseXII s1*2*2 \break
    \position #136 \verseXIII s1*2*5 \break \position #3 s1*2*7 \break \noPageBreak
    \position #58 \verseXIV s1*2*2 \break \noPageBreak
    \position #78.5 \verseXV s1*2*6 \break \noPageBreak \position #134.5 s1*2*7 \break \noPageBreak
    \position #180 \verseXVI s1*2*2  \pageBreak
    \position #1 \verseXVII s1*2*4 s1 \break \noPageBreak \position #67 s1 s1*2*7 \break \noPageBreak
    \position #123.5 \verseXVIII s1*2*2 \break \noPageBreak  
    \position #145 \verseXIX s1*2*6 \break \position #2.5 s1*2*7 \break 
    \position #45 \verseXX s1*2*5 \break 
    \position #105.5
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
            \Lyrics 
                \consists "Tweak_engraver"
                \override LyricText #'font-size = #0.5
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
