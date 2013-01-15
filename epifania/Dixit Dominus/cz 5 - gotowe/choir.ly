\version "2.15.36"
\pointAndClickOff

#(set-global-staff-size 17)

\include "filename.ily"

scripture = \markup { \column \right-align { 
  \bold "przygotowanie nut:"
  "Dominika Kochanowska, Krysia Mazur, Marcin Nowak"
  " "
} }

translation = \markup {
  \typewriter {
    \column {
      \vspace #1
      \bold "Tu es     sacérdos in aetérnum secúndum órdinem  Melchísedech."
            "Ty jesteś kapłanem na wieki    na wzór  (reguły) Melchizedeka."
    }
  }
}

composerShort = "(Händel)"

\paper {
 % page-count = #4
  %system-count = #9
  indent = 0 \mm
  short-indent = 0 \mm
  top-margin = 7 \mm
  % bottom-margin = 6 \mm
  left-margin = 13 \mm
  right-margin = 12 \mm
  % line-width = 185 \mm
  top-markup-spacing #'basic-distance = 3
  markup-system-spacing #'basic-distance = 25
  top-system-spacing #'basic-distance = 8
  top-system-spacing #'padding = 2
  last-bottom-spacing #'basic-distance = 9
  %ragged-last-bottom = ##f
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

\score {
  \new ChoirStaff = choir
  <<
    \sopranoOneStaffVar
    \sopranoOneLyricsVar
    \sopranoTwoStaffVar
    \sopranoTwoLyricsVar
    \altoStaffVar
    \altoLyricsVar
    \tenorStaffVar
    \tenorLyricsVar
    \bassStaffVar
    \bassLyricsVar
  >>
  
  \layout { 
   %{ \override Stem #'details #'lengths = #'(3.0 3.0 3.25 4.0 5.0 6.0)
    \override Stem #'details #'beamed-lengths = #'(2.9 3 3.5)
    \override Stem #'details #'beamed-minimum-free-lengths = #'(1.6 1.4 1.2) 
    \override Stem #'details #'beamed-extreme-minimum-free-lengths =#'(1.7 1.2) %}
    \override Lyrics.LyricText #'font-name = #"Minion Pro Med Cond"
    \set Timing.beamExceptions = #'()
    \context {
      \Lyrics \consists "Tweak_engraver"
      %\override LyricText #'font-size = #0.5
      %\override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #0.5
      %\override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.25
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
