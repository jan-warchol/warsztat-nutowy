\version "2.17.6"
\include "deutsch.ly"

#(set-global-staff-size 15.5)

\paper {
  page-count = #1
  ragged-last-bottom = ##f
  %ragged-bottom = ##t
  system-system-spacing #'padding = #4
  %score-system-spacing #'basic-distance = #23
  top-markup-spacing #'basic-distance = #1.5
  markup-system-spacing #'basic-distance = #17.7
  print-page-number = ##f
  indent = 0 \mm
  left-margin = 18 \mm
  right-margin = 17 \mm

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

%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% Store the following until
%LSR %%   %% end of include file
%LSR %% as splitStaffBarLine-1.0.ily.
%LSR %% To use it in your projects, write
%LSR %%   \include "<path-to-file/>splitStaffBarLine-1.0.ily"
%LSR %% to define the commands described below.
%LSR %%
%LSR %% Cheers,
%LSR %%   Alexander
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% splitStaffBarLine
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% Version 1.0
%LSR %% 2009, Alexander Kobel (www.a-kobel.de)
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% Defines the
%LSR %%   \splitStaffBarLine
%LSR %% command, which adds arrows in north-east and south-east
%LSR %% directions at a bar line, to denote that several voices
%LSR %% sharing a staff will each continue on a staff of their own in
%LSR %% the next system.
%LSR %% Automatically inserts a break at this position, otherwise
%LSR %% the symbol does not make any sense.
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR %% As a side-effect, defines the markup command
%LSR %%   \arrow-at-angle <angle> <length> <fill>
%LSR %% as a helper function, which draws an arrow of length <length>
%LSR %% at an angle of <angle> (in degrees).
%LSR %% If <fill> = #t, the arrowhead is filled.
%LSR %% Internally uses the fontsize and thickness properties, as
%LSR %% \arrow-head and \draw-line do.
%LSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%LSR
%LSR
%LSR %% This should also work with older version, probably up
%LSR %% to <= 2.10. Please report if this is the case.

#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
          ;; PI-OVER-180 and degrees->radians are taken from flag-styles.scm
          (PI-OVER-180 (/ (atan 1 1) 45))
          (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
          (angle-rad (degrees->radians angle-deg))
          (target-x (* length (cos angle-rad)))
          (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
                       (markup
                        #:translate (cons (/ target-x 2) (/ target-y 1.4))
                        #:rotate angle-deg
                        #:translate (cons (/ length -2) 0)
                        #:concat (#:draw-line (cons length 0)	
                                              #:arrow-head X RIGHT fill)))))

splitStaffBarLineMarkup = \markup
\with-dimensions #'(0 . 0) #'(0 . 0)
\translate #'(4.5 . 0) {
  \combine
    \arrow-at-angle #45 #(sqrt 8) ##f
    \arrow-at-angle #-45 #(sqrt 8) ##f
}

joinStaffUpMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \arrow-at-angle #45 #(sqrt 8) ##f
}

joinStaffDownMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \arrow-at-angle #-45 #(sqrt 8) ##f
}

splitStaffBarLine = {
  \once \override Staff.BarLine #'stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob splitStaffBarLineMarkup)
        0))
  \break
}

joinStaffUp = {
  \once \override Staff.BarLine #'stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob joinStaffUpMarkup)
        0))
  \break
}

joinStaffDown = {
  \once \override Staff.BarLine #'stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob joinStaffDownMarkup)
        0))
  \break
}


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
instrumentNameTop = {
  \set Staff.instrumentName = \markup \column \right-align { "S I" "S II" }
  \set Staff.shortInstrumentName = \markup \column \right-align { "S I" "S II" }
}

% CONTENT BEGINGS HERE:

\header	{
  title = \markup \column {
    \larger \larger "Veni Sancte Spiritus"
    \vspace #0.5
  }
  subtitle = ""
  composer = \markup \override #'(baseline-skip . 2.3)
  \right-column {
    " "
    \line { \bold "muzyka:" Łukasz Czerwiński (milimetr88@gmail.com) }
    \small "skład nut: Jan Warchoł, jan.warchol@gmail.com"
  }
  poet = \markup \override #'(baseline-skip . 2.5) \column {
    \bold "słowa:"
    "wstęp: Biblia Pallotinum wyd. trzecie (Dz 2, 1-2)"
    "zwrotki: Łukasz Czerwiński"
  }

  tagline = ##f
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
  \repeat volta 2 {
  \override ParenthesesItem #'font-size = #0
  \cadenzaOn
  d8 e8 fis\breve*1/2 a8 a8 fis4 fis4 \bar"|"
  h\breve*1/2 a8 g8
  %\shape #'((0 . 0.2)(0 . 0.7)(0 . 0.7)(0 . 0.5)) Slur
  fis4. ( g16 [fis])  e2 \bar"|"
  cis'\breve*1/2 cis8 h cis4 cis4 \bar"|"
  cis\breve*1/2 h8 a8 a2 a2 \bar"|"
  \cadenzaOff
  }
}

bassIntro = \relative f {
  \repeat volta 2 {
  \override ParenthesesItem #'font-size = #0
  \cadenzaOn
  d8 d8 d\breve*1/2 d8 d8 d4 d4 \bar"|"
  g\breve*1/2 g8 g8 d2 a2 \bar "|"
  a'\breve*1/2 a8 a8 a4 a4  \bar "|"
  fis\breve*1/2fis8 fis8 e2 a,2 \bar"|"
  \cadenzaOff
  }
}

% refrain:

topIRefrain = \relative f'' {
  \repeat volta 2 {
    <>^\markup \small "(nadgłos dedykowany Lili Pawełek)"
    fis4. e8 | fis4. fis8 |
    g8 g g g | a8( g16) fis( e4) |
  }
  \alternative {
    { \break fis2 | g | e4 e4 }
    { 
      \shape #'((0.2 . -1)(1 . -0.8)(-0.7 . -0.8)(-0.2 . -1)) Slur
      fis2( | e4. d8) | d2 }
  }
}

topIIRefrain = \relative f'' {
  \repeat volta 2 {
    d4. d8 | d4. d8 |
    d8 d d d | d8( d16) cis( <a cis>4) |
  }
  \alternative {
    { d2 | e4.( d8) | d4 cis4 }
    {
      \shape #'((0 . 0.9)(0 . 0.6)(0 . 0.6)(0 . 0.9)) Slur
      d2( | cis4. d8) | d2 }
  }
}

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
    { a8 a
      \once \override Beam #'positions = #'(4.8 . 4.4)
      \shape #'((0 . -0.2)(0 . -0.6)(0 . -0.6)(0 . -0.2)) Slur
      h16 ([a16]) fis8 | g4. h8 | a2 }
    { a8 a
      \once \override Beam #'positions = #'(4.8 . 4.4)
      \shape #'((0 . -0.2)(0 . -0.6)(0 . -0.6)(0 . -0.2)) Slur
      h16 ([a16]) fis8 | g4. g8 | fis2 }
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

sopranoVerseI = \relative f' {
  \override Score.TimeSignature #'stencil =
  #(lambda (grob)
	  (parenthesize-stencil 
	    (ly:time-signature::print grob) 0.1 0.4 0.4 0.3 ))
  \time 4/4
  \cadenzaOn
  \tieDashed \set melismaBusyProperties = ##f
  d16 ^\markup {"rytm" \italic "ad lib."} d16 \bar "|"
  \cadenzaOff
  d8 d4 d16~ d e8 d8~ d e |
  fis d~ d fis g d4. |
  fis8 fis e d e4. d8 |
  \joinStaffDown
  \tieSolid \unset melismaBusyProperties
  \break
}

sopranoVerseII = \relative f' {
  \tieSolid \unset melismaBusyProperties
  e2 r2
  \once \override DynamicText #'stencil = ##f d'1 \pp ~ d2 (g,2)
  \once \override DynamicText #'stencil = ##f fis8 \mf fis e d e4. d8 | d2
  \mark \markup \smaller \column {
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
  \set Staff.instrumentName = "A"
  \set Staff.shortInstrumentName = "A"
  \oneVoice
  r8 d1 ~ d1
  d8 d a a cis4. d8
  \voiceTwo
  \instrumentNameSA
  \joinStaffUp
  d4( cis4) r2
  d1 ~ d1
  d8 d d d cis4. d8 a2
}

tenorVerse = \relative c' {
  r8 a1 ~ a2 (h2)
  a8 a fis fis g4. fis8 a2 r2
  a1 ~ a2 (h2)
  a8 a fis fis g4. fis8 fis2
}

bassVerse = \relative f {
  r8 d1 ~ d2 (g,2)
  \override TextScript #'X-offset = #-3.5
  d'8 d d d a4. d8 a2 h4 cis8
  ^\markup {"rytm" \italic "ad lib."}
  \once \override DynamicText #'stencil = ##f d8 \f
  \tieDashed \set melismaBusyProperties = ##f
  d8~ d4 d8 e8 d8~ d8 e8 |
  fis8 d4 fis8 g d4. |
  \once \override DynamicText #'stencil = ##f d8 \mf d d d a4. a8 d2
}

% LYRICS ====================================

veniExclaim = \lyricmode {
  Ve -- ni San -- cte Spi -- ri -- tus!
}

glosic = \lyricmode {
  gło -- sić Two -- ją chwa -- _ łę!
}

introText =  \lyricmode {
  "Kie" -- dy
  \once \override LyricText #'X-offset = #-1.5
  "nadszedł wreszcie dzień Pięć" -- dzie -- siąt -- ni -- cy
  \once \override LyricText #'X-offset = #-1.5
  "znajdowali się wszyscy razem na tym" sa -- mym miej -- scu.
  \once \override LyricText #'X-offset = #-1.5
  \markup \raise #2.3 \override #'(baseline-skip . 0.4) \column {
    \line { "Nagle dał się słyszeć z nieba szum," }
    \line { "                       jakby uderzenie gwałto" }
  }
  -- wne -- go wi -- chru,
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
  \override LyricHyphen #'extra-offset = #'(0 . -2.3)
  \markup \override #'(baseline-skip . 0.4) \column {
    \line { "i zaczęli mówić obcymi językami," }
    \line { "                         tak jak im Duch po" }
  }
  --
  \override LyricText #'extra-offset = #'(0 . -2.3)
  zwa -- lał mó -- wić.
  \revert LyricText #'extra-offset
  \revert LyricHyphen #'extra-offset
}

refrainText = \lyricmode {
  Ve -- ni San -- cte Spi -- ri -- tus,
  Ve -- ni San -- cte Spi -- ri -- tus,
  Ve -- ni San -- cte Spi -- ri -- tus.
  Ve -- ni San -- cte Spi -- ri -- tus.
}

refrainTopText = \lyricmode {
  Przy -- bądź, przy -- bądź, przy -- bądź
  Du -- chu Świę -- ty!
  Przy -- bądź, Du -- chu, przy -- bądź!
}

verseSopranoText = \lyricmode {
  \set stanza = "1."
  A -- po -- sto -- łów zgro -- ma -- dzo -- nych
  na -- peł -- ni -- łeś swo -- ją mo -- cą.
  \veniExclaim
  A --
  \veniExclaim
}

verseIISoprano = \lyricmode {
  \set stanza = "2." _ _ Ty __ _ na -- _ tchną -- łeś __ _
  Swych ucz -- niów __ _ od -- wa -- gą,
  \veniExclaim
}

verseAltoText = \lyricmode {
  \set stanza = "(1-2.)"
  O --
  \veniExclaim
  \set stanza = "1."
  A --
  \veniExclaim
}

verseIIAltoText = \lyricmode {
  \repeat unfold 36 { \skip 4 }
  \set stanza = "2."
  A --
  \glosic
}

verseTenorText = \lyricmode { \verseAltoText }

verseBassText = \lyricmode {
  -tus!
  \set stanza = "(1.)"
  Przy -- bądź! Ob -- da -- rzaj nas, Pa -- nie, _
  pło -- mie -- niem Swej wia -- ry.
  \veniExclaim
}

verseIIBass = \lyricmode {
  \set stanza = "2."
  Przy -- bądź! \skip 4
  Chce -- _ my, Pa -- nie, świad -- czyć z_mo -- cą,
  z_ra -- do -- ścią,
  \glosic
}

\score {
  \new ChoirStaff <<
    \new Staff = top \with {
      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -2)
      \override StaffSymbol.thickness = #(magstep -1)
    }{
      \clef treble
      \instrumentNameTop
      <<
	\new Voice = topI {
	  \voiceOne
	  \commonprops
	  \customInstrumentS
	  \new Devnull {
	    \tenorIntro
	  }
	  \break
	  \topIRefrain
	}
	\new Voice = topII {
	  \voiceTwo
	  \commonprops
	  \customInstrumentS
	  \new Devnull {
	    \tenorIntro
	  }
	  \break
	  \topIIRefrain
	}
      >>
    }
    \new Lyrics = toplyrics \with {
      \override LyricText #'font-size = #0
    } \lyricsto topI 
    { \refrainTopText }
    
    \new Staff = sopranosolo {
      \clef treble
      \set Staff.instrumentName = "S"
      \set Staff.shortInstrumentName = "S"
      
      \new Voice = soprano {
	\commonprops
	\customInstrumentS
	\new Devnull {
	  \tenorIntro
	}
	\break
	\new Devnull {
	  \sopranoRefrain
	}
	\break
	\sopranoVerseI
      }
    }
    \new Lyrics = soplyrics \lyricsto soprano 
    { \verseSopranoText }
    \new Lyrics = soplyricsII \lyricsto soprano
    { \verseIISoprano }

    \new Staff = women {
      \clef treble
      \instrumentNameSA
      <<
	\new Voice = soprano {
	  \voiceOne
	  \commonprops
	  \customInstrumentS
	  \new Devnull {
	    \tenorIntro
	  }
	  \break
	  \sopranoRefrain
	  \splitStaffBarLine
	  \new Devnull {
	    \sopranoVerseI
	  }
	  \sopranoVerseII
	}
	\new Voice = alto {
	  \voiceTwo
	  \commonprops
	  \new Devnull {
	    \tenorIntro
	  }
	  \customInstrumentA
	  \altoRefrain
	  \altoVerse
	}
      >>
    }
    \new Lyrics = womenlyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.7
    }
    \lyricsto alto 
    { \refrainText \verseAltoText }
    \new Lyrics = womenlyricsII \lyricsto alto 
    { \verseIIAltoText }

    \new Staff = men {
      \clef bass
      \instrumentNameTB
      <<
	\new Voice = tenor {
	  \voiceOne
	  \commonprops
	  \customInstrumentT
	  \tenorIntro
	  \tenorRefrain
	  \tenorVerse
	}
	\new Voice = bass {
	  \voiceTwo
	  \commonprops
	  \customInstrumentB
	  \bassIntro
	  \bassRefrain
	  \bassVerse
	}
      >>
    }
    \new Lyrics = basslyrics \lyricsto bass
    { 
      \introText
      \repeat unfold 35 { \skip 4 }
      \verseBassText
    }
    \new Lyrics = basslyricsII \lyricsto bass
    { 
      \introTextII
      \repeat unfold 36 { \skip 4 }
      \verseIIBass
    }
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
    
    \context {
      \Lyrics 
      \override LyricText #'font-name = "Free Serif"
      %   \override LyricText #'stencil =
      %  #(lambda (grob)
      %    (ly:stencil-scale (lyric-text::print grob) 0.99 1))
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
