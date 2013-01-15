\version "2.15.33"
\pointAndClickOff
\header	{
  title = "Everybody Sing Freedom"
  subtitle = "negro spiritual"
}
commonprops = {
  \autoBeamOff
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  \dynamicUp
  \key g \major
  \time 4/4
}
\paper {
  page-count = #1
  system-count = #3
}
#(set-global-staff-size 17)
%--------------------------------MELODY--------------------------------
solomelody = \relative c''' {
  R1*9
  g2 ( a4 g4 | a8 g2.. ~ | g1 )
  d1 ( ~ | d1 | b2 c2 | b1 ) \fermata \bar "|."
}
sopranomelody =	\relative c' {
  \slurDashed
  d2. ( e4 ) | g8 g2.. |
  a2. ( b4 ) | a8 g2.. |
  b2. ( d,4 ) | e8 g4.
  g4 b4 | << { a1 ~ | a2 } { s2 \< s\! s\> } >> g4\! a4 |
  % 9
  b8 b4. b4 a4 |
  g2 e4 g4 | % 11
  a8 g4. g4 e4 | % 12
  d2 g4 e4 | % 13
  d2 g4 g4 | % 14
  b2 a4 a4 | % 15
  g1 ~ | % 16
  g1 \fermata \bar "|."
}
altomelody = \relative c' {
  \slurDashed
  d2. ( e4 ) | e8 e2.. |
  fis2. ( fis4 ) | d8 d2.. |
  g2. ( d4 ) |  e8 e4.
  \slurSolid
  e4 g4 | fis2 \< ( e2 \! | d2 \> ) r2 \! |
  % 9
  g8 g4. g4 fis4 |
  e2 b4 e4 | % 11
  e8 e4. e4 e4 | % 12
  d2 e4 e4 | % 13
  d2 e4 e4 | % 14
  g2 fis4 fis4 | % 15
  d2 e4 e4 | % 16
  d1 \fermata \bar "|."
}
tenormelody = \relative c' {
  \slurDashed
  b2. ( b4 ) | b8 b2.. | % 3
  c2. ( c4 ) | c8 b2.. | % 5
  d2. ( b4 ) | c8 c4.
  \slurSolid
  a4 a4 | d2 \< ( cis2 \! | d2 \> ) r2 \! |
  % 9
  b8 b4. b4 b4 |
  b2 g4 b4 | % 11
  c8 c4. c4 c4 | % 12
  b2 c4 c4 | % 13
  b2 b4 b4 | % 14
  d2 c4 c4 | % 15
  b2 c4 c4 | % 16
  b1 \fermata \bar "|."
}
bassmelody = \relative c {
  \slurDashed
  g'2. ( g4 ) | e8 e2.. | % 3
  d2 ( e2 ) | fis8 g2.. | % 5
  g,2 ( b2 ) | c8 c4.
  \slurSolid
  cis4 cis4 | d2 \< ( e2 \! | fis2 \> ) r2 \! |
  % 9
  e8 e4. e4 e4 |
  e2 e4 e4 | % 11
  c8 c4. c4 e4 | % 12
  g2 e4 e4 | % 13
  g2 e4 e4 | % 14
  d2 d4 d4 | % 15
  g,2 c4 c4 | % 16
  g1 \fermata \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  g1 e:m d2 fis:dim7 fis8:dim g2.. g1 c2 a:7 d a d1
  e1:m
}
%--------------------------------LYRICS--------------------------------
solotext = \lyricmode { Oh! __ Oh! __ }
sopranotext =  \lyricmode {
  \set stanza = "1. "
  Oh, free -- dom! Oh, free -- dom! Oh, free -- dom o -- ver me!
  But be -- fore I'd be a slave, I'll be bu -- ried in my grave,
  and go home to my Lord, and be free.
}
altotext =  \lyricmode {
  \set stanza = "1. "
  Oh, free -- dom! Oh, free -- dom! Oh, free -- dom o -- ver me!
  fore I'd be a slave, I'll be bu -- ried in my grave,
  and go home to my Lord, and be free, and be free.
}
tenortext =  \lyricmode {
  \set stanza = "1. "
  Oh, free -- dom! Oh, free -- dom! Oh, free -- dom o -- ver me!
  fore I'd be a slave, I'll be bu -- ried in my grave,
  and go home to my Lord, and be free, and be free.
}
basstext =  \lyricmode {
  \set stanza = "1. "
  Oh, free -- dom! Oh, free -- dom! Oh, free -- dom o -- ver me!
  fore I'd be a slave, I'll be bu -- ried in my grave,
  and go home to my Lord, and be free, and be free.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        "2. No more runnin'! No more runnin'! No more runnin' over me! But before (...)"
        "3. No more cryin'! No more cryin'! No more cryin' over me! But before (...)"
        "4. No more shootin'! No more shootin'! No more shootin' over me! But before (...)"
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  <<
    % \new ChordNames { \germanChords \akordy }

    \new Staff = solostaff {
      \clef treble
      \set Staff.instrumentName = "Solo"
      \set Staff.shortInstrumentName = "Solo"
      \new Voice = solovoice {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \solomelody
      }
    }
    \new Lyrics = sololyrics \lyricsto solovoice \solotext

    \new ChoirStaff <<
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
      \new Lyrics = sopranolyrics \lyricsto soprano \sopranotext

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
      \new Lyrics = altolyrics \lyricsto alto \altotext

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
      \new Lyrics = basslyrics \lyricsto bass \basstext
    >>
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
