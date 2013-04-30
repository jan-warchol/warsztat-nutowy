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
      c1 c c c c c c c
      c1 c c c c c c c
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
      g1:m g:m c:m7 d:m7
      g1:m g:m c:m7 d:m7
      g1:m es c:m7 d:7
      g:m c:m7 d:m7 f

      %{ alternatywne akordy
         a2:m d2:m g2
         e2:m a2:m a2:m d2:m
         g1
      %}
    }
    \new Lyrics \lyricmode {
      O4 -- twórz2 -- cie4 ser2 -- ca,2
      tchnie4 -- nie4 da4 -- je4 Bóg,_―1
      niech4 Je2 -- go4 ży2 -- cie2
      roś4 -- nie4 w_na4 -- szej4 du2 -- szy._―4
      I4 niech2 no4 -- wy4 lud2. na4 --
      ro2 -- dzi4 się4 z_wód,_―2. chrztem4
      świę2 -- tym4 na4
      ży4 -- cie4 u4 -- moc4 --
      nio1 -- ny!1
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
