\version "2.16.1"
#(define vowel-set (list->char-set (string->list "AEIOUYÅÄÖaeiouyåäö")))

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
      \time 6/8
      c2. c c c4. c
      c2. c4. c
    }
    \new ChordNames \with {
      \consists "Bar_engraver"
      \consists "Time_signature_engraver"
    }
    \chordmode {
      \override ChordNames.TimeSignature #'style = #'numbered
      \override BarLine #'bar-extent = #'(-0.5 . 2)
      \override TimeSignature #'Y-offset = #'0.75
      \override TimeSignature #'font-size = #-2
      \set chordNameLowercaseMinor = ##t
      \time 6/8
      a2.:m g f e4. a:m
      a2.:m e4.:m a4.:m
    }
    \new Lyrics \lyricmode {
      \time 6/8
      Al4 -- le8 -- lu4 -- ja,8
      Al4 -- le8 -- lu4 -- ja,8
      Al4 -- le8 -- lu4 -- ja,8
      Al8 -- le8 -- lu8 -- ja!4.
      Niech8 za8 -- brzmi8 Pa4 -- nu8
      chwa8 -- ła8 w_nie8 -- bio4 -- sach,4
    }
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricText #'X-offset = #center-on-vowel
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
      %\override SpacingSpanner #'packed-spacing = ##t
    }
  }
}
