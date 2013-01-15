\version "2.13.45"
\pointAndClickOff
% \include "italiano.ly"

#(set-global-staff-size 15)

\include "filename.ily"

scripture = \markup { \column { " " " " } }

translation = \markup {
    \typewriter {
        \column {
            \vspace #1
            \bold ""
                  ""
                  " "
            \bold ""
                  ""
          }
      }
  }
  
composerShort = ""

\paper {
    % page-count = #
    system-count = #7
    indent = 0 \mm
    short-indent = 0 \mm
    top-margin = 7 \mm
    % bottom-margin = 6 \mm
    left-margin = 12 \mm
    right-margin = 13 \mm
    % line-width = 185 \mm
    top-markup-spacing #'basic-distance = 8
    markup-system-spacing #'basic-distance = 24
    top-system-spacing #'basic-distance = 8
    top-system-spacing #'padding = 2
    last-bottom-spacing #'basic-distance = 9
   % system-system-spacing #'basic-distance = 40
    ragged-last-bottom = ##f
    % annotate-spacing = ##t
    \include "EpifaniaHeaders.ily"
  }

\header {
    \include "titles.ily"
   % poet = 
   % subsubtitle = 
    % tagline = ##f
  }

sharedProperties = {
    \include "global.ily"
  }

individualBreaks = { }
%{    s2.*16 \break
    s2.*13 \break
    s2.*10 \break
    s2.*8 \break
  %}

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"
\include "fluteStruct.ily"
\include "violinIStruct.ily"
\include "violinIIStruct.ily"
\include "violaStruct.ily"
\include "continuoStruct.ily"
%{
    \context Voice = sopranoVoice { \once \override MultiMeasureRest #'staff-position = #-4 }
    \context Voice = bassVoice {  \revert MultiMeasureRest #'staff-position }
%}


sopranoCues = \context Staff = sopranoStaff {
    s2.*4
    \new CueVoice \with { instrumentCueName = "fl." }
    \context Voice = sopranoVoice { \override MultiMeasureRest #'staff-position = #-2 }
    \cueDuring #"flute" #UP { s2.*2 }
    \context Voice = sopranoVoice { \revert MultiMeasureRest #'staff-position }
    s2.*9
    \new CueVoice \with { instrumentCueName = "vn.I" }
    \cueDuring #"violinI" #DOWN { s2.*2 }
    s2.*12
    \new CueVoice \with { instrumentCueName = "vn.I" }
    \context Voice = sopranoVoice { \override MultiMeasureRest #'staff-position = #-2 }
    \cueDuring #"violinI" #UP { s2. }
    \context Voice = sopranoVoice { \revert MultiMeasureRest #'staff-position }
    s2.*9
    \new CueVoice \with { instrumentCueName = "fl." }
    \cueDuring #"flute" #UP { s2.*2 }
    s2.*13
    \new CueVoice \with { instrumentCueName = "vn.I" }
    \cueDuring #"violinI" #DOWN { s2. }
  }

altoCues = \context Staff = altoStaff {
    s2.*4
    \new CueVoice \with { instrumentCueName = "vn.II" }
    \cueDuring #"violinII" #DOWN { s2.*2 }
    s2.*9
    \new CueVoice \with { instrumentCueName = "vn.II" }
    \cueDuring #"violinII" #DOWN { s2.*2 }
    s2.*12
    \new CueVoice \with { instrumentCueName = "vn.II" }
    \context Voice = altoVoice { \override MultiMeasureRest #'staff-position = #4 }
    \cueDuring #"violinII" #DOWN { s2. }
    \context Voice = altoVoice { \revert MultiMeasureRest #'staff-position }
    s2.*9
    \new CueVoice \with { instrumentCueName = "vn.I" }
    \context Voice = altoVoice { \override MultiMeasureRest #'staff-position = #-2 }
    \cueDuring #"violinI" #UP { s2.*3 }
    \context Voice = altoVoice { \revert MultiMeasureRest #'staff-position }
    s2.*12
    \new CueVoice \with { instrumentCueName = "vn.II" }
    \cueDuring #"violinII" #DOWN { s2. }
  }

tenorCues = \context Staff = tenorStaff {
    s2.*4
    \new CueVoice \with { instrumentCueName = "vla." }
    \cueDuring #"viola" #DOWN { s2.*2 }
    s2.*9
    \new CueVoice \with { instrumentCueName = "vla." }
    \cueDuring #"viola" #DOWN { s2.*2 }
    s2.*12
    \new CueVoice \with { instrumentCueName = "vla." }
    \context Voice = tenorVoice { \override MultiMeasureRest #'staff-position = #2 }
    \cueDuring #"viola" #DOWN { s2. }
    \context Voice = tenorVoice { \revert MultiMeasureRest #'staff-position }
    s2.*10
    \new CueVoice \with { instrumentCueName = "vla." }
    \cueDuring #"viola" #UP { s2. }
    s2.*13
    \new CueVoice \with { instrumentCueName = "vla." }
    \context Voice = tenorVoice { \override MultiMeasureRest #'staff-position = #-2 }
    \cueDuring #"viola" #UP { s2. }
    \context Voice = tenorVoice { \revert MultiMeasureRest #'staff-position }
  }

bassCues = \context Staff = bassStaff {
    s2.*4
    \new CueVoice \with { instrumentCueName = "vc." }
    \cueDuring #"continuo" #DOWN { s2.*2 }
    s2.*9
    \new CueVoice \with { instrumentCueName = "vc." }
    \cueDuring #"continuo" #DOWN { s2.*2 }
    s2.*12
    \new CueVoice \with { instrumentCueName = "vc." }
    \context Voice = bassVoice { \override MultiMeasureRest #'staff-position = #-2 }
    \cueDuring #"continuo" #UP { s2. }
    \context Voice = bassVoice { \revert MultiMeasureRest #'staff-position }
    s2.*10
    \new CueVoice \with { instrumentCueName = "vc." }
    \cueDuring #"continuo" #UP { s2. }
    s2.*13
    \new CueVoice \with { instrumentCueName = "vc." }
    \cueDuring #"continuo" #DOWN { s2. }
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
        \context {
            \Lyrics \consists "Tweak_engraver"
                \override LyricText #'font-size = #0.5
                \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #0
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
