\version "2.17.3"
#(set-global-staff-size 15.5)

ml = #(define-music-function (parser location off) (number?)
       #{ \once \override Lyrics.LyricText #'X-offset = #off #})

\paper {
  systems-per-page = 4
  page-count = 4

  top-margin = 8 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm
  last-bottom-spacing #'basic-distance = 10
}

\header {
  title = "Eja, Mater"
  composer = "Antonín Dvořák"
}

\markup {
  \typewriter {
    \column {
      \bold
      "Eia, Mater, fons   amoris,  me sentire vim  doloris fac, ut   tecum  lugeam."
      "O,   Matko, źródło miłości, mi odczuć  siłę bólu    daj, abym z Tobą smucił się."
    }
  }
}

\score {
  \new ChoirStaff
  <<
    \new Staff = soprany \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \autoBeamOff
      \include "sopranoMusic.ily"
    }
    \addlyrics \include "sopranoWords.ily"

    \new Staff = alty \with { \consists "Ambitus_engraver" } {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \autoBeamOff
      \include "altoMusic.ily"
    }
    \addlyrics \include "altoWords.ily"

    \new Staff = tenory \with { \consists "Ambitus_engraver" } {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \autoBeamOff
      \include "tenorMusic.ily"
    }
    \addlyrics \include "tenorWords.ily"

    \new Staff = basy \with { \consists "Ambitus_engraver" } {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \autoBeamOff
      \include "bassMusic.ily"
    }
    \addlyrics \include "bassWords.ily"
  >>

  \layout {
    indent = 0
    \dynamicUp
    \compressFullBarRests
    \override DynamicTextSpanner #'style = #'none
    \override TextScript #'direction = #UP

    \context {
      \Lyrics
      \override LyricText #'font-size = #0.5
      \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #0.5
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.35
    }
    \context {
      \Score
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
