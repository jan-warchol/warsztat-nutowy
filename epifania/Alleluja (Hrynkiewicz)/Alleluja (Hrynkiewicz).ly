\version "2.16.1"
#(set-global-staff-size 16)

\include "pomocnicze/ustawienia-midi.ily"

\paper {
  system-count = 4
  indent = 0 \mm
  left-margin = 14 \mm
  right-margin = 12 \mm
  top-markup-spacing #'basic-distance = 9
  markup-system-spacing #'basic-distance = 19
  system-system-spacing #'basic-distance = 20
  \include "./pomocnicze/epifanijny-styl-nagłówków.ily"
}

\header {
  title = \markup \column {
    Alleluja " " " " " "
  }
  composer = "Adam Hrynkiewicz"
  kompozytor-krotki = Hrynkiewicz
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

ml = #(define-music-function (parser location off) (number?)
        #{ \once \override Lyrics.LyricText #'X-offset = #off #})

sopran = \relative f' {
  \key d \major
  \time 4/4
  r8 fis16\melisma e\melismaEnd fis8 d a'4 a
  d d cis2
  g8 b a\melisma g\melismaEnd a4( d)
  g,4 g8 g e2
  r8 fis16\melisma e\melismaEnd fis8 d a'4 a
  d d cis2
  g16\melisma a b g\melismaEnd a\melisma b cis a\melismaEnd
  cis\melisma d e cis\melismaEnd d\melisma e fis g\melismaEnd
  g8\melisma d\melismaEnd cis8. d16 d2
  \cadenzaOn
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
  d4 d cis cis
  r8 d16\melisma cis\melismaEnd d8 b fis'4 fis8 fis
  d4 d fis8 e fis8\melisma d\melismaEnd
  e1
  d4 d cis cis
  r8 d16\melisma cis\melismaEnd d8 b fis'2
  d8\melisma g\melismaEnd e\melisma a\melismaEnd
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
  a4 a e e
  fis4 b8 b a fis16 gis a16 \melisma gis\melismaEnd a\melisma fis\melismaEnd
  b4( g) fis( a)
  b2 cis2
  a4 a e e
  fis4 b8 b a fis16 gis a16 \melisma gis\melismaEnd a\melisma fis\melismaEnd
  g4 a ais8\melisma cis\melismaEnd fis\melisma d\melismaEnd
  b4 a8. a16 a2
  \cadenzaOn
  a\breve b4 a2
  cis\breve cis4 a2
  \bar "|"
  \break
  a8 g[ a ] a\breve g8 a b a4
  a\breve g8 a b g e4 fis
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
  d4 d8 d a a16\melisma b\melismaEnd cis\melisma b\melismaEnd cis a
  b4 b fis fis
  g b d d
  r8 e16\melisma fis\melismaEnd g8 e a2
  d,4 d8 d a a16\melisma b\melismaEnd cis\melisma b\melismaEnd cis a
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
  al -- le -- lu -- \ml #-0.2 ja,
  al -- le -- lu -- \ml #-0.3 ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.3 ja!
  Al -- le -- lu -- ja,
  al -- le -- lu -- \ml #-0.2 ja,
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

    \override Lyrics.VerticalAxisGroup
    #'nonstaff-unrelatedstaff-spacing #'padding = #0.5

    \context {
      \Staff
      \consists "Ambitus_engraver"
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
