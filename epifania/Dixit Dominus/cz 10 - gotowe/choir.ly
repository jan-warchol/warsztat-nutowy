\version "2.15.36"
\pointAndClickOff

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column \right-align { 
  \bold "przygotowanie nut:" 
  "Dominika Kochanowska"
  "Ania Sitkiewicz"
  "Basia Mroczek" 
  "Kasia Sałach"
  "Ola Woźniak"
  " "
} }

translation = \markup {
  \typewriter {
    \column {
      \vspace #1
      \bold "Glória Pátri, et Fílio,  et Spirítui Sáncto."
            "Chwała Ojcu,  i  Synowi, i  Duchowi  Świętemu."
      " "
      \bold "Sicut érat in princípio, et núnc,  et sémper, et in saécula saeculórum. Amen."
            "Jak   była na początku,  i  teraz, i  zawsze, i  na wieki   wieków.     Amen."
    }
  }
}

composerShort = "(Händel)"

\paper {
  page-count = #15
  %system-count = #27
  systems-per-page = #3
  indent = 0 \mm
  short-indent = 0 \mm
  top-margin = 7 \mm
  % bottom-margin = 6 \mm
  left-margin = 13 \mm
  right-margin = 12 \mm
  % line-width = 185 \mm
  top-markup-spacing #'basic-distance = 4
  markup-system-spacing #'basic-distance = 37
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
      \Staff \consists "Custos_engraver" \override Custos #'style = #'hufnagel
    }
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
