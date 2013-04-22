\version "2.15.36"

% #(set-global-staff-size 17)

\paper {
  indent = 0
  markup-system-spacing #'padding = #0.5
  score-markup-spacing #'padding = #3.3
  score-markup-spacing #'basic-distance = #0
  top-markup-spacing #'padding = #3
  ragged-bottom = ##t
}

\header {
  instrument = "Uzupełnienie do podstaw notacji muzycznej"
  tagline = \markup {
    © Jan Warchoł 2012,
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/"
    { "licencja CC by-nc-sa" }
  }
}

\markup \vspace #1

\markup \justify {
  Metrum 4/4 oznacza się na ogół jako
  \raise #0.6 \musicglyph #"timesig.C44",
  zaś \raise #0.6 \musicglyph #"timesig.C22" oznacza metrum 2/2
  (określane jako \concat { \italic "alla breve"). }
  W muzyce dawnej \raise #0.6 \musicglyph #"timesig.C22"
  oznaczało 4/2, ale raczej nie zdarza nam się śpiewać z takich nut.
}
\markup \vspace #1

\markup \justify {
  \bold { Pauzy całotaktowe } to specjalny rodzaj pauz.
  Są umieszczane na środku taktu i zawsze wyglądają jak
  pauzy całonutowe. Pauza całotaktowa w metrum 4/4 trwa
  tyle, co pauza całonutowa, a w "metrum 1/4"
  "tyle co ćwierćnutowa" - mimo to obie wyglądają tak samo:
}
\score {
  { \numericTimeSignature R1  \time 1/4  R4 }
  \layout { line-width = 6\cm ragged-right = ##f }
}

\markup \justify {
  \bold Melizmat to jedna sylaba śpiewana na wielu dźwiękach:
}
\score {
  \relative f {
    \clef F
    \key d \minor
    r8 e e e f16 \melisma g f e f g e f
    g a g f g a f g a8 bes16 a g f e d
    cis8 e a g f16 e d c b4
    c4 \melismaEnd d e
  }
  \addlyrics {
    \once \override LyricText #'self-alignment-X = #0.7
    Chri -- ste e -- le -- i -- son
  }
  \layout {
    system-count = #1
  }
}

\markup \justify {
  Jeśli ostatnia sylaba w słowie jest śpiewana na wielu nutach,
  to rysuje się za nią linię przedłużającą, żeby wskazać
  jak długo ta sylaba trwa:
}

\score {
  <<
    \new Voice = mix \relative f'' {
      \key bes \minor
      \time 4/2
      \partial 1 des \melisma es f es \melismaEnd
      c1 \melisma des2 es \melismaEnd
      f1 ges~
      ges1 bes,~
      bes4 a bes c a bes c
    }
    \new Lyrics \with { \consists "Balloon_engraver" }
    \lyricsto mix \lyricmode {
      do -- na __ no -- bis __ A -- _
      \override BalloonTextItem #'annotation-balloon = ##f
      \balloonGrobText #'LyricText #'(-2 . -1.5)
      \markup \smaller \italic {
        ta sylaba jest śpiewana na dwóch nutach, ale nie
        wstawiamy linii przedłużającej bo nie ma gdzie
      }
      gnus _ De -- _ i
    }
  >>
  \layout { ragged-right = ##f }
}