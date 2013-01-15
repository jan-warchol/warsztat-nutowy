% wpisanie nut altu w programie frania: 27 minut
% wpisanie nut sopranu w programie frania: 19 minut
% wpisanie tenorów: 22 minuty
% wpisanie basów: 15 minut
% utworzenie partytury z szablonu: 4 minuty
% przetłumaczenie tekstu: 3 minuty
% wpisanie lyrics: 20 minut
% poprawienie nut i tekstu: 18 minut
% poprawianie layoutu: 5 minut
% sprawdzanie z oryginałem: 21 minut

% razem 155 minut = 2 godziny 35 minut

\version "2.15.33"

\header	{
  title = "And the Glory of the Lord"
  subtitle = "fragment oratorium \"Mesjasz\" (1742)"
  composer = "Georg Friedrich Händel (1685-1759)"
}
commonprops = {
  \compressFullBarRests
  \autoBeamOff
  % \tempo 4=150
  \key a \major
  \time 3/4
}

#(set-global-staff-size 16)

%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  R1*3/4*13 |
  r4 e cis |
  b4. b8 e4 |
  d4 d e |
  cis2 r4 |
  R1*3/4*2 |
  r4 r b |
  a4. cis8 ( b [ a ) ] |
  gis4. ( b8 a [ gis ] |
  fis4 ) fis r |
  R1*3/4 |
  r4 gis e |
  b'4. a8 gis4 |
  cis4 cis dis |
  e2. |
  R1*3/4*2 |
  r4 r b4 |
  a4. cis8 ( b [ a ) ] |
  gis4 b e |
  dis4. dis8 e4 |
  cis4 cis b |
  b4. cis8 dis4 |
  e4 e ( dis ) |
  e2. |
  R1*3/4*14 |
  r4 a, d |
  cis8 ( [ b ] a4 ) d |
  cis8 ( [ b ) ] a4 cis |
  d2. |
  cis2. |
  e2 e4 |
  e2. |
  e2 e4 |
  e2 e4 |
  fis2 fis4 |
  e2 r4 |
  R1*3/4*5 |
  r4 b e |
  dis8 ( [ cis8 ] b4 ) e |
  dis8 ( [ cis ) ] b4 dis4 |
  e2. |
  dis2. |
  R1*3/4*2 |
  r4 fis, b |
  ais4. gis8 fis4 |
  b4 e cis |
  dis2 r4 |
  r4 cis dis |
  cis8 ( [ b ] ais4 ) b |
  cis8 ( [ b ) ] ais4 b |
  cis4 cis fis |
  fis2. |
  fis2 fis4 |
  fis2 e4 |
  dis4. cis8 b4 |
  R1*3/4*5 |
  r4 b4 b4 |
  b2. b2 b4 b2 a4 |
  gis2 gis4 |
  fis2 r4 |
  r4 e' ( fis ) |
  b,2 ( e4 ~ |
  e8 [ fis ] dis4. ) dis8 |
  e2 r4 |
  R1*3/4*3 |
  r4 e e |
  e4 cis a |
  e'4. d8 cis4 |
  fis4 fis gis4 |
  a2 r4 |
  r4 r e4 |
  d4. fis8 ( e [ d ) ] |
  cis4. ( e8 d [ cis ] |
  b4 ) b r |
  R1*3/4*4 |
  r4 b e |
  cis8 ( [ b ] a4 ) cis |
  b8 ( [ a ) ] gis4 cis |
  b8 ( [ a ) ] gis4 e' |
  cis2. |
  b4 e e |
  e2. |
  e2 e4 |
  e4. ( d8 cis4 ) |
  d4 b4. a8 |
  a4 a a |
  a2. |
  a2. |
  a2. |
  a2. ~ |
  a2 r4 |
  r4 r a4 |
  a2. ~ |
  a2 a4 |
  a2. \fermata \bar ".|"
}
altomelody = \relative c' {
  R1*3/4*10
  r4 cis a |
  e'4. d8 cis4 |
  fis4 fis gis |
  a2 r4 |
  r4 r a |
  a4 a e |
  e2 r4 |
  R1*3/4*7 |
  r4 r e |
  dis4. fis8 ( e [ dis ) ] |
  cis4 a'2 |
  gis4. b8 ( a [ gis ) ] |
  fis4 ( b2 ~ |
  b4 a2 ~ |
  a4 gis2 ~ |
  gis4 fis2 ) |
  b,4 b b |
  b'4. b8 b4 |
  a4 a a |
  gis4. e8 fis4 |
  gis4 fis2 |
  gis2. |
  R1*3/4*4 |
  r4 e a |
  gis8 ( [ fis ] e4 ) a4 |
  gis8 ( [ fis ] ) e4 a4 |
  gis8 ( [ fis ] ) e4 r |
  R1*3/4*6 |
  r4 cis fis |
  e8 ( [ d ] cis4 ) fis |
  e8 ( [ d ] ) cis4  a' |
  a4 ( gis2 ) |
  a2. |
  R1*3/4 |
  r4 gis a |
  e2 e4 |
  b'4 b a |
  a2. |
  a4 e a |
  gis8 ( [ fis ] e4 ) r |
  r4 fis b |
  a8 ( [ gis ] fis4 ) fis |
  gis4 gis ais |
  b2 fis4 |
  r4 dis4 gis |
  fis8 ( [ e ] dis4 ) gis |
  fis8 ( [ e ) ] dis4 b' |
  b2 ( ais4 ) |
  b2. |
  R1*3/4*2 |
  r4 fis fis |
  fis4. fis8 b,4 |
  e4 e fis |
  fis4 fis b |
  bes8 ( [ gis8 ] fis4 ) fis |
  fis2. |
  fis2 fis4 |
  fis4 fis2 |
  r4 dis b |
  fis'4. e8 dis4 |
  gis4 gis ais |
  b2 fis4 |
  e4. gis8 ( fis [ e ) ] |
  dis8 ( [ cis ] ) b4 r |
  R1*3/4 |
  r4 b e |
  dis8 ( [ cis ] b4 ) dis |
  e4 fis4. fis8 |
  b,4 b r |
  R1*3/4 |
  r4 b' b |
  b2. |
  b2 b4 |
  b4 ( a2 ~ |
  a2 gis4 ) |
  fis4 fis4. fis8 |
  gis4 e a |
  gis8 ( [ fis ] e4 ) r |
  R1*3/4 |
  r4 r gis |
  a4 b4. b8 |
  e,4 e r |
  R1*3/4*2 |
  r4 e a gis4. fis8 e4 |
  a4 a e4 |
  e2 a4 |
  gis4. b8 ( a [ gis ) ] |
  fis4. ( a8 gis [ fis ] |
  e4 ) e a |
  gis4 gis r |
  r4 e a |
  gis8 ( [ fis ] e4 ) r |
  r4 r a |
  gis8 ( [ fis ) ] e4 a |
  gis8 ( [ fis ) ] e4 b' |
  a2. |
  gis2. |
  r4 gis a |
  e4 b e |
  a2. |
  a4 gis4. a8 |
  a4 a a |
  a2. |
  a2. |
  a2. |
  a2. ~ |
  a2 r4 |
  r4 r a |
  a2. ~ |
  a2 a4 |
  a2.\fermata
  \bar ".|"
}
tenormelody = \relative c' {
  R1*3/4*13 |
  r4 e e |
  gis,4. gis8 a4 |
  a4 a b |
  cis2 e4 |
  d4. fis8 ( e [ d ) ] |
  cis4. ( e8 d [ cis ] |
  b4 ) b r |
  R1*3/4 |
  r4 gis e |
  b'4. a8 gis4 |
  cis4 cis dis |
  e2 r4 |
  R1*3/4*2 |
  r4 r e |
  dis4. fis8 ( e[ dis ] ) |
  cis4. ( e8 dis8 [ cis ] |
  b4 ) b r |
  R1*3/4 |
  r4 e gis4 |
  fis4. fis8 e4 |
  e4 e fis |
  e4. b8 a4 |
  b4 b2 |
  b2. |
  R1*3/4*8 |
  r4 a d |
  cis8 ( [ b ] a4 ) d |
  cis8 ( [ b ) ] a4 d |
  cis8 ( [ b ) ] a4 r |
  a2. |
  a2. |
  a2. |
  a2 a4 |
  a2 a4 |
  fis'4 d2 |
  e2. |
  R1*3/4 |
  r4 b cis |
  b8 ( [ a ] gis4 ) cis |
  b8 ( [ a ) ] gis4 cis |
  d2. |
  cis2 r4 |
  r4 b e |
  dis8 ( [ cis ] b4 ) b |
  cis4 cis dis |
  e2. |
  dis2 b4 |
  b2. |
  b2 b4 |
  b2 fis'4 |
  e2 e4 |
  fis2. |
  R1*3/4*2 |
  r4 b, dis |
  cis4. cis8 dis4 |
  e4 b cis |
  b4 b dis |
  cis8 ( [ b ] ais4 ) b4 |
  cis4 cis dis |
  cis4 cis dis |
  cis4 ais r4 |
  R1*3/4*5
  r4 b e |
  dis8 ( [ cis ] b4 ) r |
  R1*3/4 |
  r4 r b |
  b4 a4. a8 |
  gis4 gis e |
  b'4. a8 gis4 |
  cis4 dis4. dis8 |
  e2 e4 |
  dis4. fis8 ( e [ dis8 ) ] |
  cis4. ( e8 dis [ cis ] |
  b2. |
  cis4 b2 ) |
  b2 r4 |
  r4 b e |
  cis8 ( [ b ] a4 ) r |
  r4 r e'4 |
  e8 ( [ d ) ] d4. d8 |
  cis4 cis4 r |
  R1*3/4*2 |
  r4 a cis |
  b4. b8 cis4 |
  d4 d b |
  cis2 r4 |
  R1*3/4*2 |
  r4 r e |
  d4. fis8 ( e [ d ) ] |
  cis4. ( e8 d [ cis ) ] |
  b4 gis gis |
  e'8 ( [ d ] cis4 ) cis |
  e4 b e e b b |
  e2. |
  e2. |
  r4 b cis |
  b4 gis b |
  cis4. ( d8 e4 ) |
  fis4 b, e |
  cis2. |
  r4 cis fis |
  e4 cis fis |
  e8 ( [ d ] cis4 ) fis |
  e4 cis fis e8 ( [ d ] cis4 ) r |
  r4 r e |
  fis2. ~ |
  fis2 fis4 |
  e2. \fermata \bar ".|"
}
bassmelody = \relative c {
  R1*3/4*13 |
  r4 cis a |
  e'4. d8 cis4 |
  fis4 fis gis |
  a2 r4 |
  R1*3/4 |
  r4 r a |
  gis4. b8 ( a [ gis ) ] |
  fis4. ( a8 gis [ fis ] |
  e4 ) e4 r |
  r4 r b' |
  a4. cis8 ( b [ a ) ] |
  gis4 e r |
  R1*3/4*7 |
  r4 gis e |
  b'4. a8 gis4 |
  cis4 cis dis |
  e4. gis,8 fis4 |
  e4 b'2 e,2. |
  R1*3/4*12 |
  a2. a2. a2. |
  a2 a4 |
  a2 a4 |
  b4 b2 |
  a2. |
  R1*3/4 |
  r4 e a |
  gis8 ( [ fis ] e4 ) a |
  gis8 ( [ fis ) ] e4 a |
  d2. |
  a2 r4 |
  R1*3/4*4 |
  b2 b4 |
  b2. |
  b2 b4 |
  b2 b4 |
  cis2 cis4 |
  b2. |
  R1*3/4*2 |
  r4 dis,4 b |
  fis'4. e8 dis4 |
  gis4 gis bes |
  b2 r4 |
  r4 fis b |
  ais8 ( [ gis ] fis4 ) b |
  ais8 ( [ gis ) ] fis4 b |
  ais4 fis4 r |
  R1*3/4*6 |
  r4 b,4 e |
  dis8 ( [ cis ] b4 ) r |
  r4 r b |
  cis4 dis4. dis8 |
  e4 e4 r |
  R1*3/4*2 |
  r4 gis e |
  b4. a8 gis4 |
  cis4 cis dis |
  e4. fis8 gis4 |
  a4 b ( b, ) |
  e2 r4 |
  R1*3/4 |
  r4 e4 a |
  gis8 ( [ fis ] e4 ) e |
  fis4 gis4. gis8 |
  a4 a r |
  R1*3/4*2 |
  r4 cis, a |
  e'4. d8 cis4 |
  fis4 fis gis |
  a2 r4 |
  r4 r e |
  d4. fis8 ( e [ d ) ] |
  cis4. ( e8 d [ cis ] |
  b4 ) b e |
  a2. |
  e4 e4 e4 e2. |
  e2 e4 |
  e2 gis4 |
  a2 a4 |
  e2. |
  r4 e a |
  gis4 e gis |
  a2. |
  d,4 e4. e8 |
  a,2. |
  r4 a' d |
  cis4 a d |
  cis8 ( [ b ] a4 ) d |
  cis4 a d |
  cis8 ( [ b ] a4 ) r |
  r4 r a |
  d2. ~ |
  d2 d,4 |
  a'2. \fermata \bar ".|"
}
%--------------------------------LYRICS--------------------------------
sopranotext =  \lyricmode {
  And the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and the glo -- ry, the glory of the Lord shall be re -- veal'd,
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er,
  for the mouth of the Lord hath spo -- ken it;
  and all flesh shall see it to -- geth -- er;
  And the glo -- ry, the glory of the Lord,
  and all flesh shall see it to -- geth -- er,
  the mouth of the Lord hath spo -- ken it;
  for the mouth of the Lord hath spo -- ken it; hath spo -- ken it;
  and the glo -- ry, the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er, to -- geth -- er,
  for the mouth of the Lord hath spo -- ken it,
  for the mouth of the Lord hath spo -- ken it.
}
altotext =  \lyricmode {
  And the glo -- ry, the glory of the Lord, the glory of the Lord
  shall be re -- veal -- ed, be re -- veal -- ed,
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er,
  and all flesh shall see it to -- geth -- er,
  and all flesh shall see it to -- geth -- er,
  and all flesh, and all flesh shall see it to -- geth -- er,
  and all flesh shall see it to -- geth -- er;
  And the glo -- ry, the glory of the Lord,
  and all flesh shall see it to -- geth -- er,
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er;
  for the mouth of the Lord hath spo -- ken it;
  and all flesh, shall see it to -- geth -- er;
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed, re -- veal -- ed,
  and all flesh shall see it to -- geth -- er, to -- geth -- er,
  for the mouth of the Lord hath spo -- ken it,
  for the mouth of the Lord hath spo -- ken it.
}
tenortext =  \lyricmode {
  And the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er,
  for the mouth of the Lord hath spo -- ken it;
  and all flesh shall see it to -- geth -- er,
  and all flesh shall see it to -- geth -- er
  the mouth of the Lord hath spo -- ken it;
  And the glo -- ry, the glory of the Lord,
  and all flesh shall see it, shall see it to -- geth -- er,
  and all flesh shall see it to -- geth -- er;
  the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er;
  and the glo -- ry, the glory of the Lord
  shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er, to -- geth -- er;
  for the mouth of the Lord hath spo -- ken it,
  for the mouth of the Lord, the mouth of the Lord hath spo -- ken it.
}
basstext =  \lyricmode {
  And the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  shall be re -- veal -- ed,
  And the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  for the mouth of the Lord hath spo -- ken it;
  and all flesh shall see it to -- geth -- er;
  for the mouth of the Lord hath spo -- ken it;
  And the glo -- ry, the glory of the Lord,
  and all flesh shall see it to -- geth -- er,
  and all flesh shall see it to -- geth -- er;
  and the glo -- ry, the glory of the Lord shall be re -- veal -- ed,
  and all flesh shall see it to -- geth -- er;
  and the glo -- ry, the glory of the Lord
  shall be re -- veal -- ed, re -- veal -- ed,
  and the mouth of the Lord hath spo -- ken it,
  for the mouth of the Lord hath spo -- ken it,
  for the mouth of the Lord, the mouth of the Lord hath spo -- ken it.
}

\markup {
  \typewriter {
    \column {
      " "
      \bold "And   the Glory  of the Lord   shall be revealed,"
      "Wtedy     Chwała        Pańska zostanie objawiona,"
      " "
      \bold "and all      flesh shall see it together:"
      "i   wszelkie ciało zobaczy   ją razem:"
      " "
      \bold "for the mouth of the Lord    hath  spoken  it."
      "bo      usta         Pańskie powiedziały  [tak]."
      " "
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
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
