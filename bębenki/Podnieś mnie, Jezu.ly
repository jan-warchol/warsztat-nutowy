\version "2.17.2"
#(set-global-staff-size 18.5)

\header	{
  title = \markup \column { "Podnieś mnie, Jezu" " " " " }
  poet = "słowa: Elżbieta Drożniewicz"
  composer = "muzyka: Jacek Sykulski"
}

\paper {
  top-markup-spacing #'basic-distance = #7
  left-margin = 16 \mm
  right-margin = 15 \mm
  last-bottom-spacing #'basic-distance = #12
  ragged-last-bottom = ##f
}

commonprops = {
  \key e \minor
  \time 2/4
  \tempo 4=60
  \set Score.tempoHideNote = ##t
}
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
  d4( | cis8[ b] a[ c]) | b4 \melisma %nie ma pewności co do c/cis
  c4( | a2) | b( | b) \melismaEnd
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
  \set chordNameLowercaseMinor = ##t
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
  A -- men, a -- men. __
}
tenortext =  \lyricmode {
  Pod -- nieś mnie Je -- zu i pro -- wadź do Oj -- ca,
  pod -- nieś mnie Je -- zu i pro -- wadź do Oj -- ca,
  za -- nurz mnie w_wo -- dzie Je -- go mi -- ło -- sier -- dzia.
  A -- men, a -- men, a -- men.
}

%--------------------------------LAYOUT--------------------------------
\score {
  
  \new ChoirStaff <<
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
  
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}