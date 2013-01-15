\version "2.13.45"
\pointAndClickOff

#(set-global-staff-size 15.5)

\include "filename.ily"

scripture = \markup { \column { " " " " } }

translation = \markup \tiny {
  \typewriter {
    \column {
      \vspace #1.5
      \bold "Et resurrexit     tertia    die,  secundum  Scripturas, et ascendit in coelum, sedet  ad dexteram Patris."
      "I  zmartwychwstał trzeciego dnia, zgodnie z Pismem,     i  wstąpił  do nieba,  siedzi po prawicy  Ojca."
      \bold "Et iterum    venturus est cum gloria, iudicare vivos  et mortuos:  cuius regni     non erit   finis."
      "I  powtórnie przyjdzie    w   chwale, sądzić   żywych i  umarłych: jego  królestwu nie będzie końca."
      \bold "Et          in Spiritum Sanctum,  Dominum et vivificantem, qui   ex Patre Filioque procedit."
      "I  [wierzę] w  Ducha    Świętego, Pana    i  ożywiciela,   który z  Ojca  i Syna   pochodzi."
      \bold "Qui   cum Patre et Filio simul               adoratur et conglorificatur: qui   locutus est per   prophetas."
      "Który z   Ojcem i  Synem jednocześnie [jest] czczony  i  uwielbiany:      który mówił       przez proroków."
      \bold "Et            unam,  sanctam, catholicam et apostolicam Ecclesiam. Confiteor unum  baptisma in remissionem  peccatorum."
      "I  [wierzę w] jeden, święty,  katolicki  i  apostolski  Kościół.   Wyznaję   jeden chrzest  na odpuszczenie grzechów."
      \bold "Et expecto  resurrectionem mortuorum, et vitam  venturi          saeculi.   Amen."
      "I  oczekuję wskrzeszenia   umarłych,  i  życia (zapowiedzianego) wiecznego. Amen."
    }
  }
}

composerShort = "- Et Resurrexit (Głuch)"

\paper {
  page-count = #5
  system-count = #19
  indent = 0 \mm
  short-indent = 0 \mm
  top-margin = 7 \mm
  % bottom-margin = 6 \mm
  left-margin = 12 \mm
  right-margin = 13 \mm
  % line-width = 185 \mm
  top-markup-spacing #'basic-distance = 5
  markup-system-spacing #'basic-distance = 54
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
  \repeat unfold 16 { s1. \noPageBreak } s1. \pageBreak
  \repeat unfold 29 { s1. \noPageBreak } s1. \pageBreak
  \repeat unfold 27 { s1. \noPageBreak } s1. \pageBreak
  \repeat unfold 7 { s1. \noPageBreak } \repeat unfold 22 { s1 \noPageBreak } s1. \pageBreak
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
      \Lyrics \consists "Tweak_engraver"
      \override LyricText #'font-size = #0
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
