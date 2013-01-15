\version "2.13.45"
\pointAndClickOff

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { " " " " } }

translation = \markup {
    \typewriter {
        \column {
            \vspace #5
            \bold "Panis angelicus fit       Panis   hominum, dat  Panis coelicus   figuris      terminum."
                  "Chleb anielski  staje się Chlebem ludzi,   daje Chleb niebiański zapowiedziom wypełnienie."
                  " "
            \bold "O res    mirabilis! Manducat Dominum pauper, servus  et humilis."
                  "O rzeczy cudowna!   Spożywa  Pana    ubogi - poddany i  pokorny."
          }
      }
  }
  
composerShort = "(Franck)"

\paper {
   % page-count = #1
    system-count = #8
    indent = 0 \mm
    short-indent = 0 \mm
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 15 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 6
    markup-system-spacing #'basic-distance = 45
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 7
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders.ily"
  }

\header {
    \include "titles.ily"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    
  }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\addQuote "quote" \transpose g a \relative c' { s1*9 a2 fis'4 a g fis8 e d4 g8 b a4. g8 g4 r4 
                                 s1*19 s2 b8\rest fis8 a d | cis4 d8 e b4 cis | d4 e8 fis cis4 d |
                                 e4 fis8 g fis4 e | d2. c4 }

CuesVar = \context Staff = soloStaff {
    s1*9
    \new CueVoice \with { instrumentCueName = "cl." }
    \cueDuring #"quote" #DOWN { s1*3 }
    \context Voice = soloVoice { \override MultiMeasureRest #'staff-position = #-4 }
    s1*19 
    s2
    \new CueVoice \with { instrumentCueName = "fl." }
    \cueDuring #"quote" #UP { s2*9 }
    \context Voice = soloVoice { \revert MultiMeasureRest #'staff-position }
  }
  
\score { \transpose g a {
  <<
      <<
        \soloStaffVar
        \CuesVar
      >>
    \soloLyricsVar
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
  >>
  }
    \layout { 
        \context {
            \RemoveEmptyStaffContext
            \override VerticalAxisGroup #'remove-first = ##t
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
