\version "2.16.1"
#(set-global-staff-size 16)

\paper {
  indent = 0 \mm
  left-margin = 14 \mm
  right-margin = 12 \mm
  %top-markup-spacing #'basic-distance = 5
  %markup-system-spacing #'basic-distance = 40
  %page-count =
  %system-count =
  \include "./pomocnicze/epifanijny-styl-nagłówków.ily"
}

\header {
  title = Alleluja
  composer = "Adam Hrynkiewicz"
  kompozytor-krotki = Hrynkiewicz
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

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
}
soprantekst = \lyricmode {
  Al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
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
}
alttekst = \lyricmode {
  Al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
}

tenor = \relative f {
  \key d \major
  \time 4/4
  a4 a e e
  fis4 b8 b a fis16 gis a16 \melisma g\melismaEnd a\melisma fis\melismaEnd
  b4( g) fis( a)
  b2 cis2
  a4 a e e
  fis4 b8 b a fis16 gis a16 \melisma g\melismaEnd a\melisma fis\melismaEnd
  g4 a ais8\melisma cis\melismaEnd fis\melisma d\melismaEnd
  b4 a8. a16 a2
}
tenortekst = \lyricmode {
  Al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
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
}
bastekst = \lyricmode {
  Al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
}


\score {
  \new ChoirStaff <<
    \new Staff = sopran {
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \dynamicUp
      \tupletUp
      \clef G

      \sopran
    }
    \addlyrics \soprantekst

    \new Staff = alt {
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \dynamicUp
      \tupletUp
      \clef G

      \alt
    }
    \addlyrics \alttekst

    \new Staff = tenor {
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \dynamicUp
      \tupletUp
      \clef "G_8"

      \tenor
    }
    \addlyrics \tenortekst

    \new Staff = bas {
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \dynamicUp
      \tupletUp
      \clef F

      \bas
    }
    \addlyrics \bastekst
  >>

  % blok \layout zawiera ogólne ustawienia stylu
  \layout {
    \compressFullBarRests
    %\set Score.tempoHideNote = ##t

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
}
