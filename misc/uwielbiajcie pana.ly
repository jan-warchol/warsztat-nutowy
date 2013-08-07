\version "2.16.1"
#(define vowel-set (list->char-set (string->list "AEIOUYÅÄÖaeiouyåäöęą—")))

#(define (width grob text-string)
   (let* (
          (layout (ly:grob-layout grob))
          (props (ly:grob-alist-chain grob (ly:output-def-lookup layout 'text-font-defaults))))
     (cdr (ly:stencil-extent (ly:text-interface::interpret-markup layout props (markup text-string)) X))))

#(define (center-on-vowel grob)
   (let* ((syllable (ly:grob-property-data grob 'text))
          (vowel-count (string-count syllable vowel-set))
          (vowel-position (string-index syllable vowel-set))
          (prevowel (substring syllable 0 vowel-position))
          (prevowel-width (width grob prevowel)))
     (- 0 prevowel-width)))

\paper {
  indent = 0
  ragged-right = ##t
}

skyp = \once \override LyricText #'color = #white

\score {
  <<
    \new RhythmicStaff \with {
      \remove "Bar_engraver"
      \remove "Time_signature_engraver"
      \remove "Staff_symbol_engraver"
      fontSize = #-3
      \override Stem #'length = #3
      \override StaffSymbol #'thickness = #(magstep -1)
    } {
      s1*10
    }
    \new ChordNames
    \chordmode {
      \set chordNameLowercaseMinor = ##t
      \override ChordName #'X-offset = #-0.3
      \partial 2
      a2:m7
      d2:m a:m7
      d2:m a:m7
      d1.:m
      a2:m7
      d2:m a:m7
      d2:m a:m7
      d1.:m
      d4:m c
      f1
      g1
      d1:m
      a1:7
    }
    \new Lyrics \with {
      \consists "Time_signature_engraver"
      \override TimeSignature #'style = #'numbered
      \override TimeSignature #'Y-offset = #'0.5
      \override TimeSignature #'font-size = #1
      \override VerticalAxisGroup
      #'nonstaff-nonstaff-spacing #'padding = #0.2
      \override VerticalAxisGroup
      #'nonstaff-nonstaff-spacing #'basic-distance = #0
      \override VerticalAxisGroup
      #'nonstaff-nonstaff-spacing #'minimum-distance = #0
    }
    \lyricmode {
      \override LyricText #'font-family = #'sans
      \override LyricText #'font-size = #-5
      \override LyricText #'X-offset = #0.2
      \time 2/2
      \partial 2
      "2"2
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"4 i4
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
      "1"2 "2"
    }
    \new Lyrics \with {
      \consists "Bar_engraver"
      \override BarLine #'bar-extent = #'(-0.5 . 2)
    }
    \lyricmode {
      \override LyricText #'X-offset = #center-on-vowel
      \partial 2
      U8 -- wiel -- biaj -- cie
      Pa4 -- na ludz -- kich
      serc4 bi -- ją -- ce
      dzwo4 -- ny,2.
      —2 pad8 -- nij na ko --
      la4 -- na przed Nim
      lu -- du u -- tru --
      dzo4 -- "ny. —"2.
      —2 On4 o --
      su -- szy two -- je
      łzy,2 On4 ra --
      tun -- kiem bę -- dzie8 "ci! —"8
      —2 U4 Je8 -- go
    }
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
      %\override SpacingSpanner #'packed-spacing = ##t
    }
  }
}
