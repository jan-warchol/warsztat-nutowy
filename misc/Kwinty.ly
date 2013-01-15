\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Praktyczna metoda włoskiego śpiewu"
  composer = "Nicola Vaccai (1790-1848)"
  piece = Kwinty
}
commonprops = {
  \autoBeamOff
  \tempo Andante 4=100
  \set Score.tempoHideNote = ##t
  \key d \major
  \time 4/4
}
%--------------------------------MELODY--------------------------------
melody =	\relative f' {
  d2^\p d4 d4 | a'4. b8 a4 r4 |
  e2 e4^\< e4 | b'4.(\! c8) b4 r4 |
  % in mezzo..
  c2 fis,4 fis4 | g2 g4 r8
  g8^\mf | d'2-> gis,4.^\> gis8 | a2\! r2 |
  % avvezzo..
  a2^\p d,4^\< d4 | d4.\!^\> e8 d4\! r4 |
  b'2 e,4^\< e4 | e4.(\!^\> fis8) e4\! r4 |
  % in mezzo..
  a2^\mf a4 a4 | d,2^\> d4\! r8
  a'8^\p | b2 e,4^\> a4 | d,2\! r2 \bar "|."
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Av -- vez -- zo_a | vi -- ve -- re |
  sen -- za con -- | for -- to |
  in mez -- zo_al | por -- to
  pa -- | ven -- to il | mar. |
  Av -- vez -- zo_a | vi -- ve -- re |
  sen -- za con -- | for -- to |
  in mez -- zo_al | por -- to
  pa -- | ven -- to il | mar. |
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
    piece = Kwinty
  }
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
