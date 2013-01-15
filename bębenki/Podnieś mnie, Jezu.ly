\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Podnieś mnie, Jezu"
  poet = "słowa: Elżbieta Drożniewicz"
  composer = "muzyka: Jacek Sykulski"
}
commonprops = {
  \autoBeamOff
  \key e \minor
  \time 2/4
}
scoretempomarker = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
}
\paper {
  page-count = #1
}
#(set-global-staff-size 18)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  b,4 e8 fis | g[( fis)] g e |
  fis4 fis8 e | d([ e]) fis4 |
  % podnieś..
  b,4 e8 fis | g[( fis)] g e |
  fis4 fis8 e | fis4 g8([ a]) |
  % zanurz..
  b4 b8 cis | d4 cis8([ b)] |
  a a a g | fis8([ e)] d4 |
  % amen
  e( g | fis8[ e] d[ fis]) | e2~ | e |
  e4( g | fis8[ e] d[ fis]) | e2~ | e
  \bar "|."
}
altomelody = \relative f' {
  b,4 e8 fis | e4 e8 e |
  d4 d8 d | b4 b |
  % podnieś..
  b4 e8 fis | e4 e8 e |
  d4 d8 d | b4 b |
  % zanurz
  d g8 g | g4 g |
  d8 d d d | b4 b |
  % amen
  b4( c | a2) | b4
  d4( | cis8[ b] a[ c]) | b4			%SPRAWDZIĆ CIS I ŁUKI LEGATO
  c4( | a2) | b( | b)
  \bar "|."
}
tenormelody = \relative c' {
  e,4 b'8 b | b4 b8 b |
  a4 a8 a | fis4 fis |
  % podnieś..
  e4 b'8 b | b4 b8 b |
  a4 a8 a | fis4 fis |
  % zanurz..
  b b8 cis | d4 cis8[( b]) |
  a a a g | fis4 fis |
  % amen
  g2( | fis) | e~ | e |
  g( | fis) | e4. e8 | e2
  \bar "|."
}
bassmelody = \relative f {
  e4 e8 e | e4 e8 e |
  d4 d8 d | b4 b |
  % podnieś..
  e4 e8 e | e4 e8 e |
  d4 d8 d | b4 b |
  % zanurz..
  g'4 g8 g | g4 g |
  d8 d d d | b4 b |
  % amen
  e2( | d4 b) | e2( | a,) |
  e'2( | d4 b) | <e e,>2~ | <e e,>
  \bar "|."
}
akordy = \chordmode {
  e2:m e:m d b:m
  e2:m e:m d b:m
  g g d b:m
  e4:m c d b:m7 e2:m7 a
  e4:m c d b:m7 e:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode 	{
  Pod -- nieś mnie Je -- zu i pro -- wadź do Oj -- ca,
  pod -- nieś mnie Je -- zu i pro -- wadź do Oj -- ca,
  za -- nurz mnie w_wo -- dzie Je -- go mi -- ło -- sier -- dzia. \break
  A -- men, a -- men.
}
tenortext =  \lyricmode {
  Pod -- nieś mnie Je -- zu i pro -- wadź do Oj -- ca,
  pod -- nieś mnie Je -- zu i pro -- wadź do Oj -- ca,
  za -- nurz mnie w_wo -- dzie Je -- go mi -- ło -- sier -- dzia.
  A -- men, a -- men, a -- men.
}
stanzas = \markup {
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
    \new Lyrics = sopranolyrics \lyricsto soprano \text

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
    \new Lyrics = altolyrics \lyricsto alto \text

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
    \new Lyrics = tenorlyrics \lyricsto tenor \tenortext

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
    \new Lyrics = basslyrics \lyricsto bass \text
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
