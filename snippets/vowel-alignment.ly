
\version "2.12.1"

#(set-default-paper-size "a5" 'portrait)

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
          (vowel (substring syllable vowel-position (+ vowel-position 1)))
          (prevowel-width (width grob prevowel))
          (vowel-width (width grob vowel))
          (note-width (interval-length (ly:grob-property 
                                        (ly:grob-parent grob X) 
                                        'X-extent))))
     (- (/ (- note-width vowel-width) 2) prevowel-width)))

chant =

\relative c'' {

  c4 c4 c4 c4 c4 c4 c4 c4 c4 a2 \bar "|"
  c4 c4 c4 \break

  c4 c4 c4 c4
  a4 a2 \bar "|"
  c4 c4 c4 c4 c4 c4 c4 c2 \break

  c4 b4 a4 c4 c2 \bar "|"
  c4 c4 c4 c4 c4 c4 c4 c2 \bar "|"
  \break

  c4

}

words = \lyricmode {
  \set stanza = "℣." Lat mig pri -- sa dig he -- li -- ga Jung -- fru. \set stanza = "℟." Ge mig kraft
  mot di -- na fi -- en -- der.
  \set stanza = "℣." Hell dig Mar -- i -- a, full av nad, Herren _ ar med dig
  \set stanza = "℟." Val -- sign -- ad ar du bland kvin -- nor,
}

\score {
  \new Staff

  <<
    \new Voice = "melody" \chant
    \new Lyrics \lyricsto "melody" \words
  >>

  \layout {

    \context {
      \Score
      \remove "Time_signature_engraver"
      timing = ##t
      \override Stem #'transparent = ##t
    }

    \context {
      \Staff
      \override StaffSymbol #'line-count = #4
      \remove "Time_signature_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Voice
      \override Stem #'length = #0
      \override TextScript #'font-shape = #'italic
      \override TextScript #'font-series = #'bold
    }

    \context {
      \Lyrics
      \override LyricText #'X-offset = #center-on-vowel
    }
  }
}

\paper {
  indent = 0\cm
  right-margin = 2\cm
  line-width = 11.5\cm
  ragged-last = ##t
  ragged-right = ##f
}
