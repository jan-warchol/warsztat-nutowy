\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Czego chcesz od nas, Panie"
}
commonprops = {
  \autoBeamOff
  \key f \major
  \time 40/4
}
scoretempomarker = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
}
\paper {
  system-count = #4
}
%--------------------------------MELODY--------------------------------
melody = \transpose a' fis' \relative c'' {
  \commonprops
  a8 a a c a g4 f \bar "|"
  f8 g a[ g ] f e4 d \bar "|"
  a'8 a a c a g4 f \bar "|"
  f8 g a[ g ] f e4 d \bar "|"
  f8 f f g a bes8[ a ] g4 \bar "|"
  g8 a bes c d[ c] a4 \bar "|"
  a8 a f e d e[ f] g4 \bar "|"
  f8 a g a g4 f
  \bar "|."
}
akordy = \chordmode {
  d2 s8 a4 b:m
  g4 e4.:m fis2
  b4.:m d4 a4 b:m
  g4 e4.:m fis4:7 b:m
  d4. a8:7 d:7 g4 a
  e2:m a4 d
  b4:m g4. a4 e:m
  d4 e:7 a:7 d

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Cze -- go chcesz od nas, Pa -- nie,
  za Twe hoj -- ne da -- ry?
  Cze -- go za do -- bro -- dziej -- stwa,
  któ -- rym nie masz mia -- ry?
  Koś -- ciół Cię nie o -- gar -- nie,
  wszę -- dy peł -- no Cie -- bie,
  i w_ot -- chła -- niach i w_mo -- rzu,
  na zie -- mi i w_nie -- bie.
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
            "Złota też, wiem nie pragniesz, bo to wszystko Twoje,"
            "Cokolwiek na tym świecie człowiek mieni swoje."
            "Wdzięcznym Cię tedy sercem, Panie, wyznawamy,"
            "Bo nad nie przystojniejszej ofiary nie mamy."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Tyś Pan wszystkiego świata, - Tyś niebo zbudował,"
            "I złotymi gwiazdami ślicznieś uhaftował;"
            "Tyś fundament założył nieobeszłej ziemi"
            "I przykryłeś jej nagość zioły rozlicznemi."
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
    \scoretempomarker
    \new ChordNames { \germanChords \akordy }
    \new Staff \with { \remove "Time_signature_engraver"} {
      \clef treble
      \set Staff.midiInstrument = "clarinet"
      \new Voice = solovoice {
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
