\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Wesel się Królowo miła"
}
commonprops = {
  \autoBeamOff
  \key f \major
  \time 3/4
}
scoretempomarker = {
  \tempo 4=150
  \set Score.tempoHideNote = ##t
}
\paper {
  system-count = #4
}
#(set-global-staff-size 25)
%--------------------------------MELODY--------------------------------
melody = \relative c' {
  c4 f g | a g f | e( f g) | f2 r4 |
  c4 f g | a g f | e( f g) | f2 r4 |
  % zmartwychwstał
  a4 a a | g g f4 | e2( f4) | g2 r4 |
  a4 a a | g g f4 | e2( f4) | g2 r4 |
  % alleluja
  f2 f4 | d2 c4 | f2 g4 | a2( g4) | f2.
  \bar"|."
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
firststanza =  \lyricmode {
  \set stanza = "1. "
  We -- sel się kró -- lo -- wo mi -- ła,
  bo Ten, któ -- re -- goś zro -- dzi -- ła,
  Zmart -- wych -- wstał Pan nad Pa -- na -- mi,
  módl się do Nie -- go za na -- mi,
  Al -- le -- lu -- ja, al -- le -- lu -- ja!
}
secondstanza =  \lyricmode {
  \set stanza = "2. "
  Ciesz się i we -- sel się w_nie -- bie,
  Proś Go za na -- mi w_po -- trze -- bie,
  Byś -- my się też tam do -- sta -- li
  I na wiek wie -- ków śpie -- wa -- li,
  Al -- le -- lu -- ja, al -- le -- lu -- ja!
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column	{
        " "
        " "
        "V. Raduj się i wesel, Panno Maryjo, alleluja."
        "R. Bo zmartwychwstał Pan prawdziwie, alleluja."
        " "
        "Módlmy się:"
        "Boże, któryś przez zmartwychwstanie Syna Twego,"
        "Pana naszego Jezusa Chrystusa, świat uweselić raczył,"
        "daj nam, prosimy, abyśmy przez Matkę Jego,"
        "Najświętszą Maryję Pannę,"
        "radości żywota wiecznego dostąpili."
        "Przez tegoż Chrystusa, Pana naszego. Amen."
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
    \new Lyrics = solovoicelyrics \lyricsto solovoice \firststanza
    \new Lyrics = solovoicelyrics \lyricsto solovoice \secondstanza
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
