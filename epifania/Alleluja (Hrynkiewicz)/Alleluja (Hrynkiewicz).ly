\version "2.16.1"
#(set-global-staff-size 16)

\include "pomocnicze/ustawienia-midi.ily"

\paper {
  system-count = 4
  indent = 0 \mm
  left-margin = 14 \mm
  right-margin = 12 \mm
  top-markup-spacing #'basic-distance = 5
  markup-system-spacing #'basic-distance = 19
  system-system-spacing #'basic-distance = 20
  \include "./pomocnicze/epifanijny-styl-nagłówków.ily"
}

\header {
  title = \markup \column {
    Alleluja " " " "
  }
  composer = "muzyka: Adam Hrynkiewicz"
  kompozytor-krotki = Hrynkiewicz
  tagline = ##f
  arranger = \markup \right-column {
    \normal-text "skład nut: Jan Warchoł"
    \normal-text "(jan.warchol@gmail.com, 509 078 203)"
  }
}

ml = #(define-music-function (parser location off) (number?)
        #{ \once \override Lyrics.LyricText #'X-offset = #off #})

sopran = \relative f' {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()

  r8 fis16\melisma e\melismaEnd fis8 d a'4 a
  d d cis2
  g8 b a\melisma g\melismaEnd a4( d)
  g,4 g8 g e2
  r8 fis16\melisma e\melismaEnd fis8 d a'4 a
  d d cis2
  \tweak Beam #'positions #'(2.62 . 2.62)
  g16\melisma a b g\melismaEnd
  a\melisma b cis a\melismaEnd
  \tweak Beam #'positions #'(-2.62 . -2.62)
  cis\melisma d e cis\melismaEnd d\melisma e fis g\melismaEnd
  g8\melisma d\melismaEnd
  \tweak Beam #'positions #'(-2.25 . -1.95)
  cis8. d16 d2
  \cadenzaOn
  <>
  -\tweak #'X-offset #-10
  -\tweak #'Y-offset #6
  ^\markup \large {
    \bold "wersja 4-głosowa"
    \italic "(śpiewana przez Epifanię):"
  }
  a\breve b4 a2
  a\breve g4 fis2
}
soprantekst = \lyricmode {
  Al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja!
  Al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.2 ja!
  \ml #-0.85
  "Kto pilnie rozważa prawo wolności i w nim"
  wy -- trwa,
  \ml #-0.85
  "otrzyma błogosła" --
  wień -- stwo.
}

alt = \relative f' {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()

  d4 d cis cis
  r8 d16\melisma cis\melismaEnd d8 b fis'4 fis8 fis
  d4 d fis8 e fis8\melisma d\melismaEnd
  e1
  d4 d cis cis
  r8 d16\melisma cis\melismaEnd d8 b fis'2
  \tweak Beam #'positions #'(0.8 . 1.8)
  d8\melisma g\melismaEnd
  \tweak Beam #'positions #'(1.25 . 2.25)
  e\melisma a\melismaEnd
  \tweak Beam #'positions #'(1.75 . 2.25)
  fis\melisma ais\melismaEnd b\melisma fis\melismaEnd
  g8 g a\melisma g\melismaEnd fis2
  \cadenzaOn
  fis\breve g4 fis2
  e\breve e4 d2
}
alttekst = \lyricmode {
  Al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja!
  Al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja!
  \ml #-0.85
  "Kto pilnie rozważa prawo wolności i w nim"
  wy -- trwa,
  \ml #-0.85
  "otrzyma błogosła" --
  wień -- stwo.
}

tenor = \relative f {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()

  a4 a e e
  fis4 b8 b a fis16 gis a16 \melisma gis\melismaEnd a\melisma fis\melismaEnd
  b4( g) fis( a)
  b2 cis2
  a4 a e e
  fis4 b8 b a fis16 gis a16 \melisma gis\melismaEnd a\melisma fis\melismaEnd
  g4 a ais8\melisma cis\melismaEnd fis\melisma d\melismaEnd
  b4 a8. a16 a2
  \override Score.RehearsalMark #'break-visibility = #'#(#t #f #f)
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \override Score.RehearsalMark #'Y-offset = #4
  % this is necessary because barline has considerable thickness:
  \override Score.RehearsalMark #'X-offset =
  #ly:self-alignment-interface::aligned-on-x-parent
  \mark "Fine"
  \bar "|."
  \cadenzaOn
  a\breve b4 a2
  cis\breve cis4 a2
  \mark "D.C. al Fine"
  \bar "||"
  \break
  <>
  -\tweak #'X-offset #-10
  -\tweak #'Y-offset #6
  ^\markup \large {
    \bold "wersja 1-głosowa"
    \italic "(z oryginalnych nut):"
  }
  a8 g[ a ] a\breve g8 a b a4
  a\breve g8 a b g e4 fis
  \mark "D.C. al Fine"
  \bar "||"
}
tenortekst = \lyricmode {
  Al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja!
  Al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.2 ja!
  \ml #-0.85
  "Kto pilnie rozważa prawo wolności i w nim"
  wy -- trwa,
  \ml #-0.85
  "otrzyma błogosła" --
  wień -- stwo.
  Kto pil --
  \ml #-0.75
  "nie rozważa prawo wolności"
  i w_nim wy -- trwa,
  \ml #-0.75
  "otrzy" --
  ma bło -- go -- sła -- wień -- stwo.
}

bas = \relative f {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()

  d4 d8 d a a16 b cis\melisma b\melismaEnd cis\melisma a\melismaEnd
  b4 b fis fis
  g b d d
  r8 e16\melisma fis\melismaEnd g8 e a2
  d,4 d8 d a a16 b cis\melisma b\melismaEnd cis\melisma a\melismaEnd
  b4 b fis fis
  g4 g fis b
  g8 g a4 d2
  \break
  \cadenzaOn
  d\breve g,4 d'2
  a\breve a4 d2
}
bastekst = \lyricmode {
  Al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,*
  al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja!
  Al -- le -- lu -- ja,
  al -- le -- lu -- ja,*
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.4 ja,
  al -- le -- lu -- \ml #-0.3 ja!
  \ml #-0.85
  "Kto pilnie rozważa prawo wolności i w nim"
  wy -- trwa,
  \ml #-0.85
  "otrzyma błogosła" --
  wień -- stwo.
}


\score {
  \new ChoirStaff <<
    \new Staff = sopran {
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \dynamicUp
      \tupletUp
      \clef G

      \klarnet
      \sopran
    }
    \addlyrics \soprantekst

    \new Staff = alt {
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \dynamicUp
      \tupletUp
      \clef G

      \klarnet
      \alt
    }
    \addlyrics \alttekst

    \new Staff = tenor {
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \dynamicUp
      \tupletUp
      \clef "G_8"

      \klarnet
      \tenor
    }
    \addlyrics \tenortekst

    \new Staff = bas {
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \dynamicUp
      \tupletUp
      \clef F

      \klarnet
      \bas
    }
    \addlyrics \bastekst
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \compressFullBarRests
    %\set Score.tempoHideNote = ##t
    \override NoteHead #'style = #'altdefault

    \override Staff.OctavateEight #'font-shape = #'roman
    \override Staff.OctavateEight #'font-series = #'bold
    \override Staff.OctavateEight #'X-offset = #0.7

    \override Staff.StaffSymbol #'thickness = #0.75
    \override Stem #'thickness = #1.5
    \override Slur #'thickness = #1.5
    \override Tie #'line-thickness = #1
    \override Hairpin #'thickness = #1.25

    \override Lyrics.VerticalAxisGroup
    #'nonstaff-unrelatedstaff-spacing #'padding = #0.5

    \context {
      \Staff
      \consists "Ambitus_engraver"
      \RemoveEmptyStaves
    }

    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)

    \override Score.BarNumber #'self-alignment-X =
    #(lambda (grob)
       (let ((break-dir (ly:item-break-dir grob)))
         (set! (ly:grob-property grob 'self-alignment-X)
               (if (= break-dir RIGHT)
                   1
                   0))))

    \override Score.BarNumber #'stencil =
    #(lambda (grob)
       (let ((break-dir (ly:item-break-dir grob)))
         (set! (ly:grob-property grob 'font-size)
               (if (= break-dir RIGHT)
                   -1
                   -3))
         (ly:text-interface::print grob)))
  }
  \midi {
    \tempo 4 = 90
  }
}

\markup \vspace #6
\markup {
  \override #'(thickness . 1.5)
  \override #'(span-factor . 7/10)
  \draw-hline
}
\markup \vspace #0
\markup \line {
  \raise #-0.5
  \huge
  *
  \hspace #1.2
  \override #'(line-width . 55)
  \small \justify {
    W oryginalnych nutach tekst był inaczej podłożony
    (zapewne przez pomyłkę,
    bo oryginalna wersja nie pasuje do melodii):
  }
  \hspace #1.7
  \raise #2
  \score {
    <<
      \new Staff \with {
        \remove "Clef_engraver"
        \remove "Key_engraver"
        \remove "Time_signature_engraver"
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override StaffSymbol #'thickness = #(magstep -3)
      } \new Voice = bass \relative f {
        \key d \major
        \clef F
        \time 4/4
        d4 d8 d a a16\melisma b\melismaEnd
        cis\melisma b\melismaEnd cis a
      }
      \new Lyrics = sopranolyrics \with {
        \override VerticalAxisGroup
        #'nonstaff-relatedstaff-spacing #'padding = #0.4
        \override VerticalAxisGroup
        #'nonstaff-relatedstaff-spacing #'basic-distance = #1
      } \lyricsto bass \lyricmode {
        \override LyricText #'font-size = #-2
        Al -- le -- lu -- \ml #-0.3 ja,
        al -- le -- lu -- \ml #-0.2 ja,
      }
    >>
    \layout {
    }
  }
}
