%{TODO:
  czy nie powinno być dodatkowego taktu przedłużającego drugie Domine?
  Albo może metrum jest inne? Jak to wpłynie na akompaniament?
  Czy obecny do dwóch głosów nie jest przekombinwowany?
%}

\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Gloria Tibi Domine"
  subtitle = "(kanon)"
  composer = "muzyka: Taizé"
}
commonprops = {
  \autoBeamOff
  \key c \major
  \time 4/4
}
scoretempomarker = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
melody =	\relative c {
  c4 c f f e c8 c c2 e c4 c g'4 g a a g e8 d c2 g a4 c
  \bar "|."
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Glo -- ri -- a Ti -- bi, Do -- mi -- ne, Do -- mi -- ne.
  Glo -- ri -- a Ti -- bi, Do -- mi -- ne, Do -- mi -- ne.
}
stanzas = \markup {
  \column {
    \typewriter \bold
    "Gloria Tibi,  Domine."
    \typewriter
    "Chwała Tobie, Panie."
    " "
    "akompaniament:"
    \line {"- dla dwóch głosów:" \typewriter "C d C F e a C d C F e a (...) C"}
    \line {"- dla trzech głosów:" \typewriter "C F C F C F C F C F C F (...) C"}
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

mainstructure = {
  <<
    \scoretempomarker
    \new Staff {
      \clef bass
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
