\version "2.12.3"
\include "gregorian.ly"
\header	{
  title = "Gaude Mater Polonia"
  composer = "tekst i muzyka: Wincenty z Kielczy (1200? - >1262)"
  arranger = "opracowanie: Teofil Klonowski (1805 - 1876)"
}
commonprops = {
  \autoBeamOff
  \key as \major
  \time 4/4
}
scoretempomarker = {
  \tempo "Solennie" 4=90
  \set Score.tempoHideNote = ##t
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  as2(^\f bes8[ as g]) as
  bes2 as4 \divisioMinima as
  bes8[(^\< c des c] bes4)^\> as\!
  as1 \divisioMinima

  c2 es4 des
  c( bes) as2 \divisioMinima
  bes g
  as1\fermata \divisioMinima
  \break
  c2(^\< es4) es\!
  f2^\ff es4 \divisioMinima es
  des2 c
  bes(^\> c4 as)\fermata^\p \divisioMinima

  as2 bes8[ as g] as
  bes2^\f as \divisioMinima
  bes8([^\< c des c] bes4) as\!
  as1\fermata \divisioMinima \bar"||"
  \break
  g4(^\<-> as-> bes-> ces\!->
  bes2)\! << as\fermata {s4^\> s\!} >> \bar "|."
}
altomelody = \relative f' {
  es4^\f( f2 es8) es
  g2 f4 f
  g8[(^\< as g as] g4)^\> es\!
  f2( es)
  f2 es4 es
}
tenormelody = \relative c' {
  c2(^\f des4.) c8 |
  es4( des) c c |
  << es2. {s2^\< s4^\>} >> c4 |
  des2(\! c) |

  as2 g4 bes |
  as( des) c2 |
  des des |
  c1\fermata |

  f2(^\< es8[ des)] c4 |
  des2^\ff c4 c |
  f( es) es2 |
  es4(^\> des c2)^\p\fermata |

  des4( c) des4. c8 |
  es4(^\f des) c2 |
  es2.^\< c4 |
  des2(\! c)\fermata |

  des4(^\< c es2 |
  fes4\! es8[ des)] c2\fermata \bar "|."
}
bassmelody = \relative f {

  \bar "|."
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Gau -- de, Ma -- ter Po -- lo -- ni -- a,__ pro -- le fe -- cun -- da no -- bi -- li,
  sum -- mi Re -- gis ma -- gna -- li -- a__ lau -- de fre -- quen -- ta vi -- gi -- li.__
  A -- men.
}
stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

everything = {
  \new ChoirStaff <<
    \scoretempomarker
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \text

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \everything
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      \remove "Dynamic_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \everything
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
