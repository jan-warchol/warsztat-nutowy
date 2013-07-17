\version "2.16.0"
\include "deutsch.ly"
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
  \set Score.tempoHideNote = ##t
  \override Staff.KeySignature #'Y-extent = #'(5 . -10)
  \override NoteHead #'style = #'altdefault
  \numericTimeSignature
  \override Staff.InstrumentName #'self-alignment-X = #right
}

\paper {
  %page-count = #1
  % ragged-last-bottom = ##f
  ragged-bottom = ##t
  system-system-spacing #'basic-distance = #16
  score-system-spacing #'basic-distance = #23
  top-markup-spacing #'basic-distance = #15
  print-page-number = ##f
  left-margin = 16 \mm
  right-margin = 15 \mm
  bottom-margin = 0 \mm

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
#(set-global-staff-size 16.3)
%--------------------------------MELODY--------------------------------
sopranoMelody =	\relative f' {
  \time 2/4
  \repeat volta 2 {
    fis8 e8 fis8 e8 | fis8 e16 d16 ~ d4 |
    g8 fis g fis    | g8 fis16 e16 ~ e4 |
    \break
  }
  \alternative {
    { a8 a g16 ([fis]) d8 | e4. d8 | e2 }
    { a8 a g16 ([fis]) d8 | e4. d8 | d2 }
  }

  \bar "|."
}
altoMelody = \relative f' {
  \repeat volta 2 {
    d8 d d d     | d8 cis16 d16 ~ d4 |
    d8 fis d d     | e8 d16 cis16 ~ cis4 |
  }
  \alternative {
    { fis8 fis d8 h8 | h4. d8 | d4 (cis4) }
    { fis8 fis d8 h8 | cis4 (h8) h8 | a2 }
  }
}
tenorMelody = \relative c' {
  \repeat volta 2 {
    a8 a a a     | a8 a16 h16 ~ h4 |
    h8 a h h     | cis8 h16 a16 ~ a4 |
  }
  \alternative {
    { a8 a h16 ([a16]) fis8 | g4. h8 | a2 }
    { a8 a h16 ([a16]) fis8 | g4. g8 | fis2 }
  }
}
bassMelody = \relative f {
  \repeat volta 2 {
    d8 d d a     | d8 cis16 h16 ( ~h8 [d8)] |
    %		g8 d g, d'  | <a' a,>8. <d, a>16 a8 [(b16 cis16)] |
    g8 d d h  | a8 a16 a16 ( ~ a8 [h16 cis16)] |
  }
  \alternative {
    { d8 d g16 ([d16]) fis8 | e4 (h8) g8 | a2 }
    { d8 d g16 ([d16]) h8 | a4. h8 | d2 }
  }
}

%%%%%%%%%%%%%%%%%%
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


mainMelodyIntroT = \relative f {

  \cadenzaOn
  \override ParenthesesItem #'font-size = #0

  d8 e8 fis\breve*1/2 a8 a8 fis4 fis4
  h\breve*1/2 a8 g8

  \shape Slur #'((0 . 0.2)(0 . 0.7)(0 . 0.7)(0 . 0.5))
  fis4. ( g16 [fis])  e2

  cis'\breve*1/2 cis8 h cis4 cis4
  cis\breve*1/2 h8 a8 a2 a2


  \cadenzaOff
  \bar"||" \break
}

mainMelodyIntroB = \relative f {

  \cadenzaOn
  \override ParenthesesItem #'font-size = #0

  d8 d8 d\breve*1/2 d8 d8 d4 d4 \bar"|"  \break
  g\breve*1/2 g8 g8

  d2 a2 \bar "|"  \break

  a'\breve*1/2 a8 a8 a4 a4  \bar "|" \break
  fis\breve*1/2fis8 fis8 e2 a2



  \cadenzaOff
  \bar"||" \break
}

introS = \relative f' {
  \cadenzaOn
  \cadenzaOff
}

introA = \relative f' {
  \cadenzaOn
  \cadenzaOff
}

emptyMelody = {
  \cadenzaOn
  s8 s8 s1 s8 s8 s4 s4 \bar"|"
  s1 s8 s8 s4. (s16 s) s2
  \cadenzaOff
  \bar"||"
}

sopranoMelodyThree = \relative f' {

  \parenthesize \time 4/4

  \cadenzaOn
  d16 ^\markup {"rytm" \italic "ad lib."} d16 \bar "|"
  \cadenzaOff
  d8 d4 d16 d16 e8 d8 d e |
  fis d d fis g d4. |
  fis8 fis e d e4. d8 |
  \break
  e2 r4.

  r8  \once \override DynamicText #'stencil = ##f d'1 \pp ~ d2 (g,2)
  \once \override DynamicText #'stencil = ##f fis8 \mf fis e d e4. d8 | d2
  \bar "||"
}


altoMelodyThree = \relative f' {
  r8 d1 ~ d1
  d8 d a a cis4. d8 d4( cis4) r4.

  r8 d1 ~ d1
  d8 d d d cis4. d8 a2

}

tenorMelodyThree = \relative c' {
  r8 a1 ~ a2 (h2)
  a8 a fis fis g4. fis8 a2 r4.

  r8 a1 ~ a2 (h2)
  a8 a fis fis g4. fis8 fis2
}

bassMelodyThree = \relative f {
  r8 d1 ~ d2 (g,2)
  d'8 d d d a4. d8 a2 h4 cis8

  ^\markup {"rytm" \italic "ad lib."}
  \once \override DynamicText #'stencil = ##f d8 \f
  d8 d4 d8 e8 d4 e8 |
  fis8 d4 fis8 g d4. |
  \once \override DynamicText #'stencil = ##f d8 \mf d d d a4. a8 d2

}

akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t

}
%--------------------------------LYRICS--------------------------------
textSopranoVeni = \lyricmode {
  Ve -- ni San -- cte Spi -- ri -- tus,
  Ve -- ni San -- cte Spi -- ri -- tus,
  Ve -- ni San -- cte Spi -- ri -- tus.
  Ve -- ni San -- cte Spi -- ri -- tus.
}

textSopranoTwoStanzaTwoA =  \lyricmode {
  % \repeat unfold 28 \skip4
  % \set stanza = "1. "

  "Kie" -- dy

  \once \override LyricText #'X-offset = #-2.5
  "nadszedł wreszcie dzień Pięć" -- dzie -- siąt -- ni -- cy
  \once \override LyricText #'X-offset = #-2
  "znajdowali się wszyscy razem na tym" sa -- mym miej -- scu.
}

textSopranoTwoStanzaTwoB =  \lyricmode {
  % \repeat unfold 28 \skip4
  \once \override LyricText #'X-offset = #-2
  "Nagle dał się słyszeć z nieba szum, jakby uderzenie gwałto" -- wne -- go wi -- chru,
  \once \override LyricText #'X-offset = #-2
  "i napełnił cały dom, w którym" prze -- by -- wa -- li.

}


textSopranoTwoStanzaTwo = { \textSopranoTwoStanzaTwoA \textSopranoTwoStanzaTwoB }

veniSancte = \lyricmode {
  Ve -- ni Sanc -- te Spi -- ri -- tus!
}

textSopranoThree = \lyricmode {
  \set stanza = "1."
  A -- po -- sto -- łów zgro -- ma -- dzo -- nych na -- peł -- ni -- łeś swo -- ją mo -- cą.
  \veniSancte

  A --
  \veniSancte

}

textAltoThree = \lyricmode {
  O --
  \veniSancte
  A --
  \veniSancte
}

textTenorThree = \lyricmode { \textAltoThree }
textBassThree = \lyricmode {
  O --
  \veniSancte
  Przy -- bądź! Ob -- da -- rzaj nas, Pa -- nie, pło -- mie -- niem Swej wia -- ry.
  \veniSancte
}

textSopranoAll = \lyricmode {
  \textSopranoVeni

  \textSopranoThree
}

textAlto = \lyricmode {
  \textSopranoVeni
  %\textSopranoTwo 
  \textAltoThree
}

textTenor = \lyricmode {
  \textSopranoVeni
  %\textSopranoTwo 
  \textTenorThree
}
textBass = \lyricmode {
  \textSopranoVeni
  \repeat unfold 12 \skip 4
  \textBassThree
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
%--------------------------------ALL-FILE VARIABLE--------------------------------

% customInstrument = "Choir Aahs"
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

stavesIntroduction = {

  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }

    %{
      \new Staff = soprano_alto {
      \clef treble
      \set Staff.instrumentName = "S A"
      \set Staff.shortInstrumentName = "S A"

      <<
      \new Voice = soprano {
      \voiceOne
      \commonprops
      \customInstrumentS
      \emptyMelody
      }
      \new Voice = alto {
      \commonprops
      \customInstrumentA
      \emptyMelody
      }
      >>

      }
    %}

    \new Staff = tenor {
      \once \override Staff.TimeSignature #'stencil = ##f
      \clef bass
      \instrumentNameTB

      <<
        \new Voice = tenor {
          \voiceOne
          \commonprops
          \customInstrumentT
          \mainMelodyIntroT
        }
        \new Voice = bass {
          \voiceTwo
          \commonprops
          \customInstrumentB
          \mainMelodyIntroB
        }
      >>
    }


    \new Lyrics = StanzaATwoA \lyricsto bass \textSopranoTwoStanzaTwo

  >>
}


fourstaveschoir = {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \instrumentNameSA
      <<
        \new Voice = soprano {
          \voiceOne
          \commonprops
          \customInstrumentS
          \sopranoMelody
        }
        \new Voice = alto {
          \voiceTwo
          \commonprops
          \customInstrumentA
          \altoMelody
        }
      >>
    }
    \new Lyrics = womenlyrics \lyricsto soprano \textSopranoVeni

    % \new Lyrics = womenlyricsTwoB \lyricsto soprano \textSopranoTwoStanzaTwoB


    %{
      \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
      \commonprops
      \set Voice.midiInstrument = \customInstrumentA
      \altoMelody
      \emptyMelody
      \altoMelodyThree
      }
      }
    %}
    %\new Lyrics = womenlyrics \lyricsto alto \textAlto

    \new Staff = tenor {
      \clef bass
      \instrumentNameTB
      <<
        \new Voice = tenor {
          \voiceOne
          \commonprops
          \customInstrumentT
          \tenorMelody
        }

        \new Voice = bass {
          \voiceTwo
          \commonprops
          \customInstrumentB
          \bassMelody
        }
      >>
    }
    \new Lyrics = menlyrics \lyricsto tenor \textSopranoVeni

    %{
      \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
      \commonprops
      \customInstrumentB
      \bassMelody
      \sopranoMelodyTwo
      \bassMelodyThree
      }
      }
    %}
    %\new Lyrics = menlyrics \lyricsto bass \textBass

    %\new Lyrics = StanzaATwoA \lyricsto bass \textSopranoTwoStanzaTwoA

  >>
}


fourstaveschoirTwo = {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "

      \new Voice = soprano {
        \commonprops
        \customInstrumentS
        \sopranoMelodyThree
      }

    }
    \new Lyrics = womenlyrics \lyricsto soprano \textSopranoThree

    % \new Lyrics = womenlyricsTwoB \lyricsto soprano \textSopranoTwoStanzaTwoB



    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \commonprops
        \customInstrumentA
        \altoMelodyThree
      }
    }

    \new Lyrics = womenlyrics \lyricsto alto \textAltoThree

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \customInstrumentT
        \tenorMelodyThree
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \textTenorThree

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \commonprops
        \customInstrumentB
        \bassMelodyThree
      }
    }

    \new Lyrics = menlyrics \lyricsto bass \textBassThree



  >>
}


%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \stavesIntroduction
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice \consists "Staff_performer"
    }
  }
}

\score {
  \unfoldRepeats \fourstaveschoir
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice \consists "Staff_performer"
    }
  }
}

\score {


  \unfoldRepeats \fourstaveschoirTwo
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice \consists "Staff_performer"
    }
  }
}


%--------------------------------LAYOUT--------------------------------

\markup { \large \bold Wstęp }

\score {
  \stavesIntroduction

  \layout {
    indent = 0\cm
    system-system-spacing #'basic-distance = #17
    line-width = 17\cm
    indent = 1\cm
    short-indent = \indent
  }
}


\pageBreak


\score {
  \fourstaveschoir

  \layout {
    \autoBeamOff
    indent = 0\cm
  }
}

\score {


  \fourstaveschoirTwo

  \layout {
    \override Staff.TimeSignature #'stencil = #(lambda (grob)
                                                 (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.3 ))
    indent = 0\cm
    \autoBeamOff
  }
}


\stanzas
