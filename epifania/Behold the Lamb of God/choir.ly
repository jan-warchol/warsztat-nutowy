\version "2.13.45"
\pointAndClickOff
\include "italiano.ly"

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { "J 1, 29" " "} }

translation = \markup {
    \typewriter {
        \column {
            \vspace #2.5
            \bold "Behold the Lamb of God,"
                  "Oto    Baranek     Boży,"
                  " "
            \bold "that  taketh away the sin of the world."
                  "który gładzi      grzechy    świata."
            \vspace #1.5
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
    top-markup-spacing #'basic-distance = 6
    markup-system-spacing #'basic-distance = 34
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
    
  }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"
\include "violaStruct.ily"
\include "continuoStruct.ily"

tenorCues = \context Staff = tenorStaff {
    s1*3
    \new CueVoice \with { instrumentCueName = "vla." }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \context Voice = tenorVoice { \once \override MultiMeasureRest #'staff-position = #-4 }
    \cueDuring #"viola" #UP { s1 s4 }
    \revert Staff.Stem #'beamlet-default-length
  }

bassCues = \context Staff = bassStaff {
    s1*3
    \new CueVoice \with { instrumentCueName = "b.c." }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \cueDuring #"continuo" #DOWN { s1 }
    \revert Staff.Stem #'beamlet-default-length
  }

\score {
    \new ChoirStaff = choir
      <<
        \sopranoStaffVar
        \sopranoLyricsVar
        \altoStaffVar
        \altoLyricsVar
          <<
            \tenorStaffVar
            \tenorCues
          >>
        \tenorLyricsVar
          <<
            \bassStaffVar
            \context Staff = bassStaff {
                R1*3
                \new CueVoice \with { instrumentCueName = "b.c." }
                \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
                \cueDuring #"continuo" #DOWN { s1 }
                \revert Staff.Stem #'beamlet-default-length
              }
          >>
        \bassLyricsVar
      >>

    \layout { 
        indent = 0 \mm
        short-indent = 0 \mm
        % system-count = #
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
