\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Praktyczna metoda włoskiego śpiewu"
  composer = "Nicola Vaccai (1790-1848)"
  piece = Tercje
}
commonprops = {
  \autoBeamOff
  \tempo Andantino 4=90
  \set Score.tempoHideNote = ##t
  \key f \major
  \time 6/8
}
%--------------------------------MELODY--------------------------------
melody = \relative f' {
  r4. f4^\p a8 | g4 bes8 g4 bes8 | a4 c16 r16
  c4 a8 | bes4 g8 a4 f8 | a8 g8 r8
  % 5: per fuggir
  f4 a8 | g4 bes8 g4^\< bes8 | a4 c16\! r16
  a4^\mf f8 | g4 e8 f4 d8 | c4 r8
  % 9: per fuggir 
  c4^\p e8 | d4 f8 e4^\< g8 | g8\!\> f8\! r8
  g4 bes8^\< | a4 c8 bes4 d8^\mf^\> | d8 c8\! r8
  % 13: vola in grembo
  d4^\mf bes8 | c4 a8 bes4 g8 | a4 r8
  bes4^\p g8 | a4^\> f8 g4 e8 | f4\! r8 r4. \bar "|."
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Sem -- pli -- | cet -- ta tor -- to -- | rel -- la,
  che non | ve -- de_il suo pe -- | ri -- glio,
  per fug -- | gir dal cru -- do_ar -- | ti -- glio
  vo -- la_in | grem -- bo_al_ -- cac -- cia -- | tor,
  per fug -- | gir dal cru -- do_ar -- | ti -- glio,
  per fug -- | gir dal cru -- do_ar -- | ti -- glio
  vo -- la_in | grem -- bo_al_ -- cac -- cia -- | tor,
  vo -- la_in | grem -- bo_al_ -- cac -- cia -- | tor.
}
stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

mainstructure = {
  <<
    \new ChordNames { \germanChords \akordy }
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
  \header {
    piece = Tercje
  }
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
