\version "2.13.45"
\pointAndClickOff

#(set-global-staff-size 16)

\include "filename.ily"

scripture = \markup { \column { " " " " } }

translation = \markup \tiny {
  \typewriter {
    \column {
      \vspace #0.5
      \bold "Credo  in unum    Deum, Patrem omnipotentem,   factorem     coeli et terrae, visibilium  omnium              et invisibilium."
      %{%}  "Wierzę w  jednego Boga, Ojca   wszechmogącego, stworzyciela nieba i  ziemi,  widzialnych wszystkich [rzeczy] i  niewidzialnych."
      % \vspace #0.2
      \bold "Et in unum    Dominum Jesum  Christum,  Filium Dei    unigenitum,     et    ex Patre       natum    ante  omnia      saecula."
      %{%}  "I  w  jednego Pana    Jezusa Chrystusa, Syna   Bożego jednorodzonego, który z  Ojca [jest] zrodzony przed wszystkimi wiekami."
      % \vspace #0.2
      \bold "Deum de Deo,  Lumen     de Lumine,     Deum verum     de Deo  vero,        genitum      non factum,    consubstantialem Patri: "
      %{%}  "Bóg  z  Boga, Światłość ze Światłości, Bóg  prawdziwy z  Boga prawdziwego, zrodzony [a] nie stworzony, współistotny     Ojcu, "
      % \vspace #0.2
      \bold "per   quem    omnia    facta sunt; qui   propter nos homines et propter nostram salutam   descendit de coelis, "
      %{%}  "przez którego wszystko stało się;  który dla     nas ludzi   i  dla     naszego zbawienia zstąpił   z  nieba,"
      % \vspace #0.2
      \bold "et incarnatus est  de    Spiritu Sancto   ex Maria Virgine,  et homo        factus est."
      %{%}  "i  wcielony   jest przez Ducha   Świętego z  Maryi Dziewicy, i  człowiekiem stał   się."
    }
  }
}

composerShort = "(Głuch)"

\paper {
  page-count = #4
  system-count = #15
  indent = 0 \mm
  short-indent = 0 \mm
  top-margin = 7 \mm
  % bottom-margin = 6 \mm
  left-margin = 12 \mm
  right-margin = 13 \mm
  % line-width = 185 \mm
  top-markup-spacing #'basic-distance = 0
  markup-system-spacing #'basic-distance = 38
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
  s1*7 s2.*20 \pageBreak
  \repeat unfold 37 { s2. \noPageBreak }
  s2. \pageBreak
}

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
      \Staff
      \override AccidentalPlacement #'right-padding = #0.05
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
      \Lyrics
      \consists "Tweak_engraver"
      \override LyricText #'font-size = #0
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
