\version "2.13.45"
\pointAndClickOff
\include "italiano.ly"

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { "Iz 53, 4-5" " " } }

translation = \markup {
    \typewriter {
        \column {
                  \vspace #1
            \bold "Surely He hath borne   our     griefs,       and carried our   sorrows!"
                  "Zaś    On obarczył się naszymi zmartwieniami i   dźwigał nasze smutki!"
                  " "
            \bold "He was    wounded  for our   transgressions; He was    bruised     for our   iniquities;"
                  "On został zraniony za  nasze wykroczenia;    On został zdruzgotany za  nasze nieprawości;"
                  " "
            \bold "the chastisement of  our peace     was    upon Him;"
                  "    chłosta      dla nas zbawienna spadła na   Niego;"
                  " "
            \bold "And with  His  stripes we  are  healed."
                  "A   przez Jego rany    jesteśmy uzdrowieni."
                  \vspace #1
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
    top-markup-spacing #'basic-distance = 3
    markup-system-spacing #'basic-distance = 49
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
\include "violinIStruct.ily"
\include "violinIIStruct.ily"
\include "violaStruct.ily"
\include "continuoStruct.ily"

sopranoCues = \context Staff = sopranoStaff {
    s1*4
    \new CueVoice \with { instrumentCueName = "vn.I" }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \context Voice = sopranoVoice { \once \override MultiMeasureRest #'staff-position = #-4 }
    \cueDuring #"violinI" #UP { s1 }
    \revert Staff.Stem #'beamlet-default-length
  }

altoCues = \context Staff = altoStaff {
    s1*4
    \new CueVoice \with { instrumentCueName = "vn.II" }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \cueDuring #"violinII" #DOWN { s1 }
    \revert Staff.Stem #'beamlet-default-length
  }

tenorCues = \context Staff = tenorStaff {
    s1*4
    \new CueVoice \with { instrumentCueName = "vla." }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \context Voice = tenorVoice { \once \override MultiMeasureRest #'staff-position = #-4 }
    \cueDuring #"viola" #UP { s1 }
    \revert Staff.Stem #'beamlet-default-length
  }

bassCues = \context Staff = bassStaff {
    s1*4
    \new CueVoice \with { instrumentCueName = "b.c" }
    \override Staff.Stem #'beamlet-default-length = #'(0.75 . 0.75)
    \context Voice = bassVoice { \once \override MultiMeasureRest #'staff-position = #-4 }
    \cueDuring #"continuo" #UP { s1 }
    \revert Staff.Stem #'beamlet-default-length
    s1*21
    \new CueVoice \with { instrumentCueName = "b.c" }
    \context Voice = bassVoice { \override MultiMeasureRest #'staff-position = #-8 }
    \cueDuring #"continuo" #UP { s2 \clef treble s2 s1*2 \clef bass  }
    \context Voice = bassVoice {  \revert MultiMeasureRest #'staff-position }
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
        system-count = #15
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
