\version "2.17.6"
\include "deutsch.ly"

#(set-global-staff-size 16)

\paper {
  %page-count = #1
  % ragged-last-bottom = ##f
  ragged-bottom = ##t
  system-system-spacing #'basic-distance = #16
  score-system-spacing #'basic-distance = #23
  top-markup-spacing #'basic-distance = #15
  print-page-number = ##f
  indent = 0 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm

  oddFooterMarkup = \markup {
    \column {
      \fill-line {
	%% Copyright header field only on first page in each bookpart.
	\on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      \fill-line {
	%% Tagline header field only on last page in the book.
	\fromproperty #'header:tagline
      }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

% MISC DEFINITIONS:

startParenthesis = {
  \once \override ParenthesesItem #'stencils = #(lambda (grob)
						  (let ((par-list (parentheses-item::calc-parenthesis-stencils grob))
							(right-par (grob-interpret-markup grob (markup #:null))))
						    (list (car par-list)right-par )))
}

endParenthesis = {
  \once \override ParenthesesItem #'stencils = #(lambda (grob)
						  (let ((par-list (parentheses-item::calc-parenthesis-stencils grob))
							(left-par (grob-interpret-markup grob (markup #:null))))
						    (list left-par (cadr par-list))))
}

% customInstrument = { \set Voice.midiInstrument = "Flute" }
customInstrument = { \set Voice.midiInstrument = "Choir Aahs" }

customInstrumentS = \customInstrument
customInstrumentA = \customInstrument
customInstrumentT = \customInstrument
customInstrumentB = \customInstrument

instrumentNameTB = {
  \set Staff.instrumentName = \markup \column \right-align { T B }
  \set Staff.shortInstrumentName = \markup \column \right-align { T B }
}
instrumentNameSA = {
  \set Staff.instrumentName = \markup \column \right-align { S A }
  \set Staff.shortInstrumentName = \markup \column \right-align { S A }
}

% CONTENT BEGINGS HERE:

\header	{
  title = \markup \column {
    \larger \larger "Veni Sancte Spiritus"
    " " " " " "
  }
  subtitle = ""
  composer = \markup {\bold "muzyka:" Łukasz Czerwiński }
  poet = \markup \override #'(baseline-skip . 2.5) \column {
    \bold "słowa:"
    "wstęp: Biblia Pallotinum wyd. trzecie (Dz 2, 1-2)"
    "zwrotki: Łukasz Czerwiński" " " " " " "
  }

  tagline = \markup \override #'(baseline-skip . 2.5)
  \center-column {
    "autor: Łukasz Czerwiński, 2013"
    "kontakt: milimetr88@gmail.com"
    " "
    \tiny "skład nut: Jan Warchoł, jan.warchol@gmail.com"
  }
}

commonprops = {
  \key d \major
  \tempo 4=75
  \autoBeamOff
  \set Score.tempoHideNote = ##t
  \override Staff.KeySignature #'Y-extent = #'(5 . -10)
  \override NoteHead #'style = #'altdefault
  \numericTimeSignature
  \override Staff.InstrumentName #'self-alignment-X = #right
  \once \override Staff.TimeSignature #'stencil = ##f
}

% MELODY PIECES ==========================

% intro:

tenorIntro = \relative f {
  \override ParenthesesItem #'font-size = #0
  \cadenzaOn
  d8 e8 fis\breve*1/2 a8 a8 fis4 fis4 \bar"|"
  h\breve*1/2 a8 g8
  \shape #'((0 . 0.2)(0 . 0.7)(0 . 0.7)(0 . 0.5)) Slur
  fis4. ( g16 [fis])  e2 \bar"|"
  cis'\breve*1/2 cis8 h cis4 cis4 \bar"|"
  cis\breve*1/2 h8 a8 a2 a2 \bar"|"
  \cadenzaOff
}

bassIntro = \relative f {
  \override ParenthesesItem #'font-size = #0
  \cadenzaOn
  d8 d8 d\breve*1/2 d8 d8 d4 d4 \bar"|"
  g\breve*1/2 g8 g8 d2 a2 \bar "|"
  a'\breve*1/2 a8 a8 a4 a4  \bar "|"
  fis\breve*1/2fis8 fis8 e2 a2 \bar"|"
  \cadenzaOff
}

% refrain:

sopranoRefrain = \relative f' {
  \mark \markup \large \musicglyph #"scripts.segno"
  \time 2/4
  \repeat volta 2 {
    fis8 e8 fis8 e8 | fis8 e16 d16 ~ d4 |
    g8 fis g fis    | g8 fis16 e16 ~ e4 |
  }
  \alternative {
    { a8 a g16 ([fis]) d8 | e4. d8 | e2 }
    { a8 a g16 ([fis]) d8 | e4. d8 | d2 }
  }
  \override Score.RehearsalMark #'break-visibility = #'#(#t #f #f)
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "Fine"
  \bar "|."
}

altoRefrain = \relative f' {
  \repeat volta 2 {
    d8 d d d     | d8 cis16 d16 ~ d4 |
    d8 fis d d     | e8 d16 cis16 ~ cis4 |
  }
  \alternative {
    { fis8 fis d8 h8 | h4. d8 | d4 (cis4) }
    { fis8 fis d8 h8 | cis4 (h8) h8 | a2 }
  }
}

tenorRefrain = \relative c' {
  \repeat volta 2 {
    a8 a a a     | a8 a16 h16 ~ h4 |
    h8 a h h     | cis8 h16 a16 ~ a4 |
  }
  \alternative {
    { a8 a h16 ([a16]) fis8 | g4. h8 | a2 }
    { a8 a h16 ([a16]) fis8 | g4. g8 | fis2 }
  }
}

bassRefrain = \relative f {
  \repeat volta 2 {
    d8 d d a     | d8 cis16 h16 ( ~h8 [d8)] |
  % g8 d g, d'  | <a' a,>8. <d, a>16 a8 [(b16 cis16)] |
    g8 d d h  | a8 a16 a16 ( ~ a8 [h16 cis16)] |
  }
  \alternative {
    { d8 d g16 ([d16]) fis8 | e4 (h8) g8 | a2 }
    { d8 d g16 ([d16]) h8 | a4. h8 | d2 }
  }
}

% verse:

sopranoVerse = \relative f' {
  \override Score.TimeSignature #'stencil =
  #(lambda (grob)
	  (parenthesize-stencil 
	    (ly:time-signature::print grob) 0.1 0.4 0.4 0.3 ))
  \time 4/4
  \cadenzaOn
  d16 ^\markup {"rytm" \italic "ad lib."} d16 \bar "|"
  \cadenzaOff
  d8 d4 d16 d16 e8 d8 d e |
  fis d d fis g d4. |
  fis8 fis e d e4. d8 |
  e2 r4.
  r8  \once \override DynamicText #'stencil = ##f d'1 \pp ~ d2 (g,2)
  \once \override DynamicText #'stencil = ##f fis8 \mf fis e d e4. d8 | d2
  \mark \markup \column {
    \line {
      \bold 1: Dal segno \scale #'(0.8 . 0.8) {
	(→ \raise #1 \tiny \musicglyph #"scripts.segno" ) 
      }
    }
    \line {
      \bold 2: Dal segno al fine
    }
  }
  \bar "||"
}

altoVerse = \relative f' {
  r8 d1 ~ d1
  d8 d a a cis4. d8 d4( cis4) r4.
  r8 d1 ~ d1
  d8 d d d cis4. d8 a2
}

tenorVerse = \relative c' {
  r8 a1 ~ a2 (h2)
  a8 a fis fis g4. fis8 a2 r4.
  r8 a1 ~ a2 (h2)
  a8 a fis fis g4. fis8 fis2
}

bassVerse = \relative f {
  r8 d1 ~ d2 (g,2)
  d'8 d d d a4. d8 a2 h4 cis8
  ^\markup {"rytm" \italic "ad lib."}
  \once \override DynamicText #'stencil = ##f d8 \f
  d8 d4 d8 e8 d4 e8 |
  fis8 d4 fis8 g d4. |
  \once \override DynamicText #'stencil = ##f d8 \mf d d d a4. a8 d2
}

% LYRICS ====================================

veniExclaim = \lyricmode {
  Ve -- ni Sanc -- te Spi -- ri -- tus!
}

introText =  \lyricmode {
  "Kie" -- dy
  \once \override LyricText #'X-offset = #-1.5
  "nadszedł wreszcie dzień Pięć" -- dzie -- siąt -- ni -- cy
  \once \override LyricText #'X-offset = #-1.5
  "znajdowali się wszyscy razem na tym" sa -- mym miej -- scu.
  \once \override LyricText #'X-offset = #-1.5
  "Nagle dał się słyszeć z nieba szum, jakby uderzenie gwałto" -- wne -- go wi -- chru,
  \once \override LyricText #'X-offset = #-1.5
  "i napełnił cały dom, w którym" prze -- by -- wa -- li.
}

introTextII =  \lyricmode {
  U -- ka --
  \once \override LyricText #'X-offset = #-1.5
  "zały się im też języki" jak -- by z_og -- nia,
  \once \override LyricText #'X-offset = #-1.5
  "które się rozdzieliły i na każdym z nich" spo -- czął je -- den.
  \once \override LyricText #'X-offset = #-1.5
  "I wszyscy zostali napełnieni"
  \markup \bold Du --
  \markup \bold chem
  \markup \bold Świę --
  \markup \bold tym,
  \once \override LyricText #'X-offset = #-1.5
  "i zaczęli mówić obcymi językami, tak jak im Duch po" -- zwa -- lał mó -- wić.
}

refrainText = \lyricmode {
  Ve -- ni San -- cte Spi -- ri -- tus,
  Ve -- ni San -- cte Spi -- ri -- tus,
  Ve -- ni San -- cte Spi -- ri -- tus.
  Ve -- ni San -- cte Spi -- ri -- tus.
}

verseSopranoText = \lyricmode {
  \set stanza = "1."
  A -- po -- sto -- łów zgro -- ma -- dzo -- nych na -- peł -- ni -- łeś swo -- ją mo -- cą.
  \veniExclaim
  A --
  \veniExclaim
}

verseAltoText = \lyricmode {
  O --
  \veniExclaim
  A --
  \veniExclaim
}

verseTenorText = \lyricmode { \verseAltoText }

verseBassText = \lyricmode {
  O --
  \veniExclaim
  Przy -- bądź! Ob -- da -- rzaj nas, Pa -- nie, pło -- mie -- niem Swej wia -- ry.
  \veniExclaim
}

stanzas = \markup {
  \fill-line {
    {
      \hspace #0.1
      \column {
	\vspace #0.3
	\line {
	  "2. "
	  \column {
	    "Ty natchnąłeś Swych uczniów odwagą. "
	    "Veni Sancte Spiritus! Przybądź!"

	    "Chcemy, Panie, świadczyć z mocą, z radością "
	    "głosić Twoją chwałę!"
	  }
	}
	\vspace #1.5
      }
      \hspace #0.5
    }
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      
      \new Voice = soprano {
	\commonprops
	\customInstrumentS
	\new Devnull {
	  \tenorIntro
	}
	\break
	\sopranoRefrain
	\break
	\sopranoVerse
      }
    }
    \new Lyrics = soplyrics \lyricsto soprano 
    { \refrainText \verseSopranoText }

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      
      \new Voice = alto {
	\commonprops
	\new Devnull {
	  \tenorIntro
	}
	\customInstrumentA
	\altoRefrain
	\altoVerse
      }
    }
    \new Lyrics = altolyrics \lyricsto alto 
    { \refrainText \verseAltoText }

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      
      \new Voice = tenor {
	\commonprops
	\customInstrumentT
	\tenorIntro
	\tenorRefrain
	\tenorVerse
      }
    }
    \new Lyrics = tenlyrics \lyricsto tenor
    { \introText \refrainText \verseTenorText }
    \new Lyrics = tenlyricsII \lyricsto tenor
    { \introTextII }

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      
      \new Voice = bass {
	\commonprops
	\customInstrumentB
	\bassIntro
	\bassRefrain
	\bassVerse
      }
    }
    \new Lyrics = basslyrics \lyricsto bass
    { \introText \refrainText \verseBassText }
    \new Lyrics = basslyricsII \lyricsto bass
    { \introTextII }
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice \consists "Staff_performer"
    }
  }
}

\stanzas