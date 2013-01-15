\version "2.13.45"
\pointAndClickOff

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { " " " " } }

translation = \markup {
  \typewriter {
    \column {
      \vspace #1.5
      \bold "Crucifixus  etiam   pro nobis sub Pontio     Pilato,  passus   et sepultus   est."
      "Ukrzyżowany również za  nas   pod Poncjuszem Piłatem, umęczony i  pogrzebany został."
    }
  }
}

composerShort = "(Głuch)"

\paper {
  page-count = #1
  % system-count = #4
  indent = 0 \mm
  short-indent = 0 \mm
  top-margin = 7 \mm
  % bottom-margin = 6 \mm
  left-margin = 12 \mm
  right-margin = 13 \mm
  % line-width = 185 \mm
  top-markup-spacing #'basic-distance = 5
  markup-system-spacing #'basic-distance = 24
  top-system-spacing #'basic-distance = 8
  top-system-spacing #'padding = 2
  last-bottom-spacing #'basic-distance = 9
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

tOff = { \override TupletBracket #'bracket-visibility = ##f }
tOn = { \revert TupletBracket #'bracket-visibility }

\include "miscCommands.ily"
\include "lyricsStruct.ily"
\include "choirStruct.ily"

\score {
  \new ChoirStaff = choir
  <<
    #(set-accidental-style 'modern-cautionary 'score)
    \sopranoStaffVar
    \sopranoLyricsVar
    \altoStaffVar
    \altoLyricsVar
    \tenorStaffVar
    \tenorLyricsVar
    \bassStaffVar
    \bassLyricsVar
  >>

  \layout {
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
      \override BarNumber #'break-visibility = #'#(#f #f #t)
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
