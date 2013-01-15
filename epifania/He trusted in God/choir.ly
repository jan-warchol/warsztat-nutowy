\version "2.13.45"
\pointAndClickOff
\include "italiano.ly"

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { "Mt 27, 43" " " } }

translation = \markup {
    \typewriter {
        \column {
            \column {
                \vspace #2
                \bold "He trusted in God   that  He   would deliver Him:"
                      "On zaufał     Bogu, że   (Bóg)       wybawi  Go:"
                      " "
                \bold "let      Him  deliver Him, if     He   delight          in Him."
                      "niechże (Bóg) wybawi  Go,  jeśli (Bóg) upodobał [Sobie] w  Nim."
                \vspace #1.5
              }
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
    top-markup-spacing #'basic-distance = 5
    markup-system-spacing #'basic-distance = 35
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders.ily"
  }

\header {
    \include "titles.ily"
    subsubtitle = \markup \larger "(1742)"
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = {
    s1*5 \break \repeat unfold 5 { s1*4 \break }
  }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"
\include "violinIStruct.ily"
\include "violinIIStruct.ily"
\include "violaStruct.ily"
\include "continuoStruct.ily"

sopranoCues = \context Staff = sopranoStaff {
    \new CueVoice \with { instrumentCueName = "vn.I" }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \cueDuring #"violinI" #DOWN { s4 }
    \revert Staff.Stem #'beamlet-default-length
  }

altoCues = \context Staff = altoStaff {
    \new CueVoice \with { instrumentCueName = "vn.II" }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \cueDuring #"violinII" #UP { s4 }
    \revert Staff.Stem #'beamlet-default-length
  }

tenorCues = \context Staff = tenorStaff {    
    \new CueVoice \with { instrumentCueName = "vla." }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \cueDuring #"viola" #DOWN { s4 }
    \revert Staff.Stem #'beamlet-default-length
  }

bassCues = \context Staff = bassStaff {    
    \new CueVoice \with { instrumentCueName = "b.c." }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \cueDuring #"continuo" #UP { s4 }
    \revert Staff.Stem #'beamlet-default-length
  }

\score {
    \new ChoirStaff = choir
      <<
          <<
            \sopranoStaffVar
            \sopranoCues
          >>
        \sopranoLyricsVar
          <<
            \altoStaffVar
            \altoCues
          >>
        \altoLyricsVar
          <<
            \tenorStaffVar
            \tenorCues
          >>
        \tenorLyricsVar
          <<
            \bassStaffVar
            \bassCues
          >>
        \bassLyricsVar
      >>
    
    \layout { 
        indent = 0 \mm
        short-indent = 0 \mm
        system-count = #16
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
