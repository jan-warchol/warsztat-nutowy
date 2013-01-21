\include "gregorian.ly"

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

#(set-global-staff-size 25)

\paper {
  top-margin = 15 \mm
  line-width = 150 \mm
  markup-system-spacing #'basic-distance = 12
}

\header {
  title = "Salve Regina"
}

\score {
  <<
    \new VaticanaVoice = "cantus" {
      \clef "vaticana-do3"

      %\set fontSize = #1
      % Verse 1 — Salve, Regína
      a\melisma \[ a \flexa g \pes a\melismaEnd \] d
      \divisioMinima
      \[ a\melisma \flexa g\melismaEnd \]
      \[ f\melisma \flexa e f \pes g \flexa f\melismaEnd \]
      \[ e\melisma \flexa d\melismaEnd \]
      \divisioMaior
      c d \[d\melisma \flexa c\melismaEnd \] d
      \[ e\melisma \pes f\melismaEnd\] g
      \[d\melisma \pes e \flexa c\melismaEnd \] d
      \finalis
      % Verse 2 — Vita, dulcédo
      % a\melisma \[ a \flexa g \pes a\melismaEnd \] d
      % \divisioMinima
      % \[ a\melisma \flexa g\melismaEnd \]
      % \[ f\melisma \flexa e f \pes g \flexa f\melismaEnd \]
      % \[ e\melisma \flexa d\melismaEnd \]
      % \divisioMaior
      % c d \[e\melisma \pes f\melismaEnd \] g
      % \[d\melisma \pes e \flexa c\melismaEnd \] d
      % \finalis
      % Verse 3 — Ad te clamámus
      \[ d\melisma \pes f\melismaEnd\] a g
      \[ g\melisma \flexa f \pes a\melismaEnd\] e
      \divisioMaior
      g f \[ e\melisma \flexa d \pes g\melismaEnd \]
      \divisioMinima
      c d \[ e\melisma \flexa d \pes g\melismaEnd \]
      \[ f\melisma \flexa e\melismaEnd \] d
      \finalis
      % Verse 4 — Ad te suspirámus
      \[ d\melisma \pes f\melismaEnd \] a c' g
      \[ g\melisma \flexa f \pes g\melismaEnd \] a
      \divisioMaior
      d \[ f\melisma \pes \deminutum g\melismaEnd \] g d
      \[ \virga f\melisma \inclinatum e \inclinatum d\melismaEnd \]
      c \divisioMaior
      d \[ d\melisma \flexa c \pes f\melismaEnd \]
      \[ g\melisma \pes a\melismaEnd \]
      g \[ f\melisma \flexa e\melismaEnd \] g
      \[ f\melisma \flexa \deminutum e\melismaEnd \]
      \[ d\melisma \flexa c \pes d\melismaEnd \]
      \finalis
      % Verse 5 — Eia ergo, Advocáta nostra
      f\melisma \[ f \pes g\melismaEnd \] f
      \[ g\melisma \pes \deminutum a\melismaEnd \] a
      \divisioMinima
      c' g \[ \virga a\melisma \inclinatum g \inclinatum f\melismaEnd \] d g a
      \divisioMaior
      d' d' \[ c'\melisma \flexa b c' \pes d'\melismaEnd \] a
      \divisioMinima
      d' c' a \[ g\melisma \flexa f \pes a\melismaEnd \] g
      \[ d\melisma \pes e\melismaEnd \] f
      \[ \virga e\melisma \inclinatum d \inclinatum c\melismaEnd \]
      \divisioMaior
      \[ c\melisma \pes d\melismaEnd \]
      f \[ g\melisma \flexa \deminutum f\melismaEnd \]
      \[ d\melisma \flexa c \pes d\melismaEnd \] d
      \finalis
      % Verse 6 — Et Jesum
      d a, \[ c\melisma \pes d\melismaEnd \]
      \divisioMinima
      d \[ d\melisma \pes e\melismaEnd \] \[ e\melisma \flexa d d\melismaEnd \]
      c g f \[ e\melisma \flexa \deminutum d\melismaEnd \] g
      \[ f\melisma \flexa e\melismaEnd \]
      \[ d\melisma \flexa c \pes d\melismaEnd \]
      \[ d\melisma \pes a \] \virga bes\melismaEnd a
      \divisioMinima
      \[ \virga a\melisma \inclinatum g \inclinatum f\melismaEnd \] g d f
      \[ f\melisma \flexa e\melismaEnd \] \[ d\melisma \flexa c\melismaEnd \]
      \divisioMinima
      \[ e\melisma \pes f \flexa e\melismaEnd \] d d
      \finalis
      % Verse 7 ad finem — O clemens: O pia: O dulcis Virgo María
      a\melisma \[a \flexa g a \quilisma b \pes c'\melismaEnd \]
      \[ \virga b\melisma \inclinatum a \inclinatum g\melismaEnd \] a
      \finalis
      \[ g\melisma \pes a \quilisma b \pes c' \] \[ c' \flexa b\melismaEnd \]
      \[ a\melisma \flexa g\melismaEnd \] \[ g\melisma \pes a\melismaEnd \]
      \finalis
      \[ a\melisma \flexa d \virga f \inclinatum e \inclinatum d \inclinatum c d \]
      \divisioMinima
      \[ d \pes e f \pes g\melismaEnd \]
      \[ g\melisma \flexa \deminutum f\melismaEnd \]
      \[ g\melisma \pes a\melismaEnd \]
      d c d \[ d\melisma \pes g \flexa f f\melismaEnd \]
      \[ e\melisma \flexa d\melismaEnd \]
      \finalis
    }
    \new Lyrics \lyricsto "cantus" {
      Sal -- ve, Re -- gí -- na, ma -- ter mi -- se -- ri -- cór -- di -- æ:
      % Vi -- ta, dul -- cé -- do, et spes no -- stra, sal -- ve.
      Ad te cla -- má -- mus, éx -- su -- les, fi -- li -- i He -- væ.
      Ad te su -- spi -- rá -- mus, ge -- mén -- tes et flen -- tes in hac la -- cri -- má -- rum
      val -- le.
      E -- ia er -- go, Ad -- vo -- cá -- ta no -- stra, il -- los tu -- os mi -- se -- ri -- cór -- des
      ó -- cu -- los ad nos con -- vér -- te.
      Et Je -- sum, be -- ne -- díc -- tum fruc -- tum ven -- tris tu -- i, no -- bis post hoc
      ex -- sí -- li -- um os -- tén -- de.
      O cle -- mens:
      O pi -- a:
      O dul -- cis Vir -- go Ma -- rí -- a.
    }
  >>
}

\layout {
  \context {
    \Lyrics
    \override LyricText #'font-size = #-1
    \override LyricText #'X-offset = #center-on-vowel
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.5
    \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'basic-distance = #0.5
  }

  \context {
    \Staff
    \consists "Custos_engraver"
  }
}
