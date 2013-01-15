\version "2.12.3"
\pointAndClickOff
\header	{
  title = "O, Jezu, cichy i pokorny"
  subtitle = "(kanon)"
  poet = "słowa: por. Mt 11,29"
  composer = "muzyka: Jacques Berthier, Taizé"
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 2/2
}
scoretempomarker = {
  \tempo 2=55
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
melody =	\relative c'' {
  f,2 (d) | e4[ c] a2  \bar "||"
  d4 f a f | e2 e  \bar "||"
  a a | c4 a a2  \bar "||"
  a4 a f d | e2 e  \bar "|."
}
akordy = \chordmode {
  d1:m a:m
  d:m7 a:m
  d:m a:m
  d:m7 a:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  O, Je -- zu,
  ci -- chy i po -- kor -- ny,
  u -- czyń ser -- ce me
  we -- dług se -- rca Twe -- go.
}
stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

mainstructure = {
  <<
    \scoretempomarker
    \new ChordNames { \germanChords \akordy }
    \new Staff {
      \clef treble
      \set Staff.midiInstrument = "clarinet"
      \new Voice = solovoice {
        \commonprops
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
