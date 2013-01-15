\version "2.12.3"
\header {
  title = "Zmiłuj się, Boże"
  composer = "muzyka: Adam Kuczewski"
}
commonprops = {
  \autoBeamOff
  \key a \minor
  \time 4/4
  \tempo 4=65
  \set Score.tempoHideNote = ##t
}
\paper {
  page-count = #1
  system-count = #4
  ragged-last-bottom = ##f
}
#(set-global-staff-size 16)

%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  R1 d,4 d e2
  f4 a c4. b8
  a4 b e, e
  R1
  r2 r8 b' c d
  e4 b d2
  e \breathe e,4 e8 e
  c'4 b a b
  e, e a g8 a
  b4 e c4. d8
  b4 c8 [ b ] a2
  \time 2/4 a \bar "||"
  \time 4/4 a4 a8 b c4 a
  b4. a8 g4 a
  e2 e
  e4 e8 e g4 g
  a b c a
  f'2 e?
  d b4 b
  d2 b
  c a4 a
  c2 a
  b4 b g g
  b2 g
  e e4 g
  fis2 a
  g4 a b g
  a ( e ) e2 \fermata
  \bar "|."
}
altomelody = \relative f' {
  a,4 a8 a b4 b
  b2 b4 b
  c e fis fis
  e d8 [ c ] b4 b
  R1
  r8 e8 f g a4 a
  c8 b a g a2
  gis2 \breathe e4 e8 e
  e4 fis e d
  c c c8[ d] e f
  g4 e fis4. fis8
  fis4 g e2
  \time 2/4 e \bar "||"
  \time 4/4 a4 a8 b c4 a
  b4. a8 g4 a
  e2 e
  c4 c8 c d4 d
  e f g e
  g2 fis
  a fis4 fis
  a2 fis
  g e4 e
  g2 e
  fis4 fis d d
  fis2 d
  c c4 e
  d2 fis
  d4 e g e
  d4 ( b ) b2 \fermata
  \bar "|."
}
tenormelody = \relative c' {
  a4 a8 a a4 a
  a2 a4 a
  a c d d
  c b8[ a] a4 g
  r2 r8 b c d
  e4 e d4. d8
  c4 b8[ a] b2
  b \breathe b4 a8 b
  c4 d c8 c b a
  g4 g a b8 a
  g4 c a4. a8
  a4 a8[ b] d2
  \time 2/4 c \bar "||"
  \time 4/4 a4 a8 b c4 a
  b4. a8 g4 a
  e2 e
  a4 a8 a b4 b
  c d e c
  bes2 a
  b a4 a
  b2 a
  a g4 g
  a2 g
  g4 g a a
  b2 b4 ( a )
  g2 g4 g
  a2 a
  b4 b e d
  e ( d ) cis2 \fermata
  \bar "|."
}
bassmelody = \relative f {
  R1
  R1
  a,4 a8 a a'4 a
  d,4 e8[ f ] e4 e
  e f8 g a2
  a g4. g8
  f4 e8[ d] e2
  e \breathe e
  e f?4 g
  c,4 c f g8 f
  e4 a, d4. d8
  e4 e a2
  \time 2/4 a \bar "||"
  \time 4/4 a4 a8 b c4 a
  b4. a8 g4 a
  e2 e
  a4 a8 a a4 a
  a a a, c
  es2 d
  g d4 d
  g g d d
  f?2 c4 c
  f2 c
  e4 e b b
  e2 g
  c,2 c4 c
  d2 d
  e4 d c b
  a2 \once \override Stem #'length = #4 <a a'> \fermata
  \bar "|."
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
sopranoWords =  \lyricmode {
  Zmi -- łuj się, Bo -- że,
  zmi -- łuj nad grze -- szni -- kiem,
  Ty nie po -- gar -- dzasz ni -- kim.
  W_To -- bie ja sa -- mym mam u -- fa -- nie,
  wed --  ług Two -- je -- go mi -- ło -- sier -- dzia, Pa -- nie.

  I wed -- ług mnó -- stwa bos -- kich Twych li -- to -- ści,
  racz zgła -- dzić, Pa -- nie, mo -- je nie -- pra -- wo -- ści!
  O wię -- cej że -- brzę, o wię -- cej że -- brzę:
  o -- każ łas -- kę Swo -- ją,
  o -- czyść mnie z_grze -- chów,
  wy -- maż zbrod -- nię mo -- ją.
}
altoWords =  \lyricmode {
  Zmi -- łuj się, Bo -- że,
  zmi -- łuj się, Bo -- że,
  zmi -- łuj nad grze -- szni -- kiem,
  co w_swej do -- bro -- ci
  nie po -- gar -- dzasz ni -- kim.
  W_To -- bie ja sa -- mym mam u -- fa -- nie,
  wed --  ług Two -- je -- go mi -- ło -- sier -- dzia, Pa -- nie.

  I wed -- ług mnó -- stwa bos -- kich Twych li -- to -- ści,
  racz zgła -- dzić, Pa -- nie, mo -- je nie -- pra -- wo -- ści!
  O wię -- cej że -- brzę, o wię -- cej że -- brzę:
  o -- każ łas -- kę Swo -- ją,
  o -- czyść mnie z_grze -- chów,
  wy -- maż zbrod -- nię mo -- ją.
}
tenorWords =  \lyricmode {
  Zmi -- łuj się, Bo -- że,
  zmi -- łuj się, Bo -- że,
  zmi -- łuj nad grze -- szni -- kiem,
  co w_swej do -- bro -- ci
  nie po -- gar -- dzasz ni -- kim.
  W_To -- bie ja sa -- mym, w_To -- bie mam u -- fa -- nie,
  wed --  ług Two -- je -- go mi -- ło -- sier -- dzia, Pa -- nie.

  I wed -- ług mnó -- stwa bos -- kich Twych li -- to -- ści,
  racz zgła -- dzić, Pa -- nie, mo -- je nie -- pra -- wo -- ści!
  O wię -- cej że -- brzę, o wię -- cej że -- brzę:
  o -- każ łas -- kę Swo -- ją,
  o -- czyść mnie z_grze -- chów,
  wy -- maż zbrod -- nię mo -- ją.
}
bassWords =  \lyricmode {
  Zmi -- łuj się, Bo -- że,
  nad grze -- szni -- kiem,
  co w_swej do -- bro -- ci
  nie po -- gar -- dzasz ni -- kim.
  W_To -- bie mam u -- fa -- nie,
  wed --  ług Two -- je -- go mi -- ło -- sier -- dzia, Pa -- nie.

  I wed -- ług mnó -- stwa bos -- kich Twych li -- to -- ści,
  racz zgła -- dzić, Pa -- nie, mo -- je nie -- pra -- wo -- ści!
  O wię -- cej, ach, o wię -- cej że -- brzę, ach że -- brzę:
  o -- każ łas -- kę Swo -- ją,
  o -- czyść mnie z_grze -- chów,
  wy -- maż zbrod -- nię mo -- ją.
}

%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
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
    \new Lyrics = sopranolyrics \lyricsto soprano \sopranoWords

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
    \new Lyrics = altolyrics \lyricsto alto \altoWords

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
    \new Lyrics = tenorlyrics \lyricsto tenor \tenorWords

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
    \new Lyrics = basslyrics \lyricsto bass \bassWords
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
    \context {
      \Lyrics \override LyricText #'font-size = #0
    }
  }
}
