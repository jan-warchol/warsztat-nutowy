\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Pan jest mocą"
  subtitle = "(ostinato)"
  composer = "muzyka: Jacques Berthier, Taizé"
}
commonprops = {
  \autoBeamOff
  \key f \major
  \time 3/4
  \partial 4
}
scoretempomarker = {
  \tempo 4=69
}
\paper {
  system-count = #2
}
#(set-global-staff-size 19)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative f' {
  f8 g |
  a4 a8 a g f |
  d4 c f8 g |
  a4. a8 f4 |
  g2 c,8 c |
  d4. d8 \times 2/3 { e d e } |
  % 6
  f4. f8 g g |
  a4 a8 a d bes |
  g4. g8 c a |
  f4 f8 d f e |
  f2 r4 \bar "|."
}
altomelody = \relative c' {
  d8 e |
  f4 f8 f c c |
  d4 c d8 e |
  f4. f8 d4 |
  e2 c8 c |
  d4. d8 \times 2/3 { cis b cis } |
  % 6
  d4. d8 e e |
  f4 f8 f g g |
  e4. e8 e e |
  d4 d8 d d c |
  c2 r4 \bar "|."
}
tenormelody = \relative c'{
  a8 c |
  c4 c8 c f, f |
  f4 e a8 c |
  c4. c8 c4 |
  c2 c8 c |
  f,4. f8 \times 2/3 { a a a } |
  % 6
  a4. a8 c c |
  c4 c8 c d d |
  c4. c8 c c |
  a4 a8 f a g |
  a2 r4 \bar "|."
}
bassmelody = \relative c{
  d8 c |
  f4 f8 f a, a |
  bes4 c d8 c |
  <f f,>4. <f f,>8 a,4 |
  c2 c8 c |
  bes4. bes8 \times 2/3 { a a a } |
  % 6
  d4. d8 c c |
  f4 f8 f bes, bes |
  c4. c8 a a |
  d4 d8 d bes c |
  f,2 r4 \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  d8:m c f2. bes4 c2 f2. c bes2 a4
  d2:m c4 f2 g4:m c2 a4:m d2:m bes8:maj7 c f2
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Pan jest | mo -- cą swo -- je -- go | lu -- du, pie -- śnią |
  mo -- ją jest |	Pan. Mo -- ja |	tar -- cza i mo -- ja |
  moc, On jest mym | Bo -- giem, nie jes -- tem | sam, w_Nim mo -- ja |
  si -- ła, nie jes -- tem |	sam.
}
englishtext =  \lyricmode {
  \tiny {
    In the Lord I'll be ev -- er thank -- ful,
    in the Lord I will_re -- joice!
    Look to Him, do not be a -- fraid;
    in Him re -- joi -- cing: the Lord is near,
    in Him re -- joi -- cing: the Lord is near.
  }
}
stanzas = \markup {
  \column {
    \small
    \typewriter {
      " "
      " "
      \bold "In the Lord I'll be ever             thankful,       in the Lord I will   rejoice!"
      "W      Panu będę    zawsze [składał] dziękczynienie, w      Panu będę się radował!"
      \hspace #0.1
      \bold "Look   to Him,   do not be afraid;  in Him rejoicing:    the Lord is   near."
      "Spójrz na Niego, nie       bój się; w  Nim się rozraduj: Pan      jest blisko."
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \scoretempomarker
    \new ChordNames { \germanChords \akordy }
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
    \new Lyrics = womenenglyrics \lyricsto soprano \englishtext

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
    \new Lyrics = womenlyrics \lyricsto alto \text
    \new Lyrics = womenenglyrics \lyricsto alto \englishtext

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
    \new Lyrics = menenglyrics \lyricsto tenor \englishtext

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
    \new Lyrics = womenlyrics \lyricsto bass \text
    \new Lyrics = womenenglyrics \lyricsto bass \englishtext
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \fourstaveschoir
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
  \fourstaveschoir
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas