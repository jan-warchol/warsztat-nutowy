\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Jezu, mój Jezu"
  subtitle = "(kanon)"
}
commonprops = {
  \autoBeamOff
  \tempo 4=60
  \set Score.tempoHideNote = ##t
  \key e \minor
  \time 4/4
}
%--------------------------------MELODY--------------------------------
melody = \relative c' {
  e4 d8 fis e4 b |
  e8 e fis fis g a16[ g] fis4 |
  b8 b a a g a16 g fis8 b, |
  e4 d8 fis e2
  \bar "|."
}
akordy = \chordmode {
  e4:m d e:m b:m7
  e4:m d e:m b:m7
  e4:m d e:m b:m7
  e4:m d e2:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Je -- zu, mój Je -- zu, |
  dziś do Cie -- bie mó -- wić chcę, |
  Ty mi da -- jesz Swo -- je -- go Du -- cha, |
  u -- wiel -- biam Cię.
  \bar "|."
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Dobry Panie, serce me z wdzięczności drży,"
            "Ty mi dałeś Swojego Ducha. Cześć, chwała Ci."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Jezu miły, czy potrafię kochać Cię?"
            "Ty mnie pierwszy ukochałeś, wciąż kochasz mnie."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Jezu Chryste, jam nie godzien łaski Twej."
            "Pragnę pełnić wolę Twoją, wciąż wielbić Cię."
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

mainstructure = {
  <<
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
