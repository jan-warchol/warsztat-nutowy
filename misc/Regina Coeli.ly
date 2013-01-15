\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Regina Coeli"
}
commonprops = {
  \autoBeamOff
  \key f \major
  \override Staff.TimeSignature #'transparent = ##t
}
scoretempomarker = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
}
\paper {
  system-count = #4
}
#(set-global-staff-size 28)
%--------------------------------MELODY--------------------------------
melody = \transpose c f {
  \relative c' {
    \cadenzaOn % regina..
    c8 d c d e4 f8 e d4 \breathe f8 e d c4 \cadenzaOff \bar "|"
    \cadenzaOn % quia..
    c8 g'4 g8 a g f e c d e4 \breathe f8 e d c4 \cadenzaOff \bar "|"
    \cadenzaOn % resurrexit..
    g'8 g a g4 g8 c, d c4 \breathe d8 e f g4 \cadenzaOff \bar "|"
    \cadenzaOn % ora..
    g8 c, d f e d c4 \breathe b8 d d4 c \cadenzaOff
    \bar"|."
  }
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Re -- gi -- na coe -- li, lae -- ta -- re, al -- le -- lu -- ia.
  Qui -- a quem me -- ru -- i -- sti 	por -- ta -- re, al -- le -- lu -- ia.
  Re -- sur -- re -- xit, si -- cut di -- xit, al -- le -- lu -- ia.
  O -- ra pro no -- bis De -- um, al -- le -- lu -- ia.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column	{
        " "
        " "
        "V. Gaude et laetare, Virgo Maria, Alleluia,"
        "R. Quia surrexit Dominus vere, alleluia."
        " "
        "Oremus:"
        "Deus qui per resurrectionem Filii tui,"
        "Domini nostri Iesu Christi,"
        "mundum laetificare dignatus es:"
        "praesta, quaesumus, ut per eius"
        "Genetricem Virginem Mariam,"
        "perpetuae capiamus gaudia vitae."
        "Per eundem Christum Dominum nostrum. Amen."
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

mainstructure = {
  <<
    \scoretempomarker
    %	\new ChordNames { \germanChords \akordy }
    \new Staff {
      \clef treble
      \new Voice = solovoice {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \melody
      }
    }
    \new Lyrics = solovoicelyrics \lyricsto solovoice \text
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \mainstructure
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \mainstructure
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
