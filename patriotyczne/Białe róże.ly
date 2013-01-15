\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Białe róże"
  poet = "słowa: Kazimierz Wroczyński"
  composer = "muzyka: Mieczysław Kozar-Słobódzki"
}
commonprops = {
  \autoBeamOff
  \key d \minor
  \time 2/4
}
scoretempomarker = {
  \tempo 4=80
  \set Score.tempoHideNote = ##t
}
\paper {
  page-count = #1
}
#(set-global-staff-size 16)
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  \once \override TextScript #'extra-offset = #'( -6.5 . -2.5 )
  a4^\p^\markup {Żywo} a | a^\< a |
  a8.\! g16 f8^\> e | d2\! |
  d'4.^\mf cis8 | d4 bes |
  a8. gis16 a8 bes | a2^\> | \break
  % 9
  c4.\!\< g8 | c4\! bes |
  a8. gis16 a8 bes | a2 |
  e8. e16 dis8 e a4. g8
  f8. e16 f8 g | a4( cis) | \break
  % 17
  d4.^\p^\< cis8 | d4\! bes |
  a8. gis16 a8 bes | a2^\> |
  d,8.\! e16^\< f8 g |
  <<a4.\! {s4^\markup{\italic rall.} s8^\<}>> f'8 |
  e8.\! d16 cis8 e | d2 \bar "|."
}
altomelody = \relative f' {
  a4^\p g | f^\< e |
  f8.\! e16 d8^\> cis | d2\! |
  f4.^\mf f8 | e4 g |
  f8. f16 f8 f | f2^\> |
  % 9
  e8[\! f^\< g] e\! | g4 g |
  f8. f16 f8 g | f2 |
  e8. cis16 cis8 cis | d4( e8) e |
  d8. cis16 d8 e | f4( g) |
  % 17
  d4.^\p^\< d8 | d4\! d |
  f8. f16 e8 e | d4(^\> cis) |
  d8.\! e16^\< f8 g | <<a4.{s8\! s4^\<}>> a8 |
  a8.\! a16 a8 g | f2 \bar "|."
}
tenormelody = \relative c' {
  a4^\p a | b^\< cis |
  d8.\! a16 a8^\> g | f2\! |
  bes4.^\mf bes8 | bes4 d |
  c8. c16 c8 c | c2^\> |
  % 9
  <<c4. {s8\! s4^\<}>> c8\! | c4 d |
  d8. d16 d8 d | d2 |
  cis8. a16 a8 a | a4. bes8 |
  a8. a16 a8 a | a2 |
  % 17
  a4.^\p^\< a8 | a4\! g |
  d'8. b16 cis8 cis | d4(^\> a) |
  d,8.\! e16^\< f8 g | <<a4. {s8\! s4^\<}>> b8 |
  cis8.\! d16 e8 cis | d2 \bar"|."
}
bassmelody = \relative f{
  a4^\p a | a^\< a |
  a8.\! a16 a,8^\> a | d2\! |
  bes4.^\mf d8 | g4 e |
  f8. f16 f8 f | f2^\> |
  % 9
  c8[\! d^\< e] c\! | e4 g |
  d8. d16 d8 d | d2 |
  a'8. a,16 a8 a | b4( cis8) cis |
  d8. d16 d8 d | d4( e) |
  % 17
  f4.^\p^\< f8 | fis4\! g |
  a8. a16 a8 g | a2^\> |
  d,8.\! e16^\< f8 g | <<a4.{s8\! s4^\<}>> a8 |
  a8.\! a16 a8 a | d,2 \bar "|."
}
akordy = \chordmode {
  d2:m f4 a d:m a4 d2:m bes e:dim f f
  c2 c4 g:m d2:m d:m a b4:m7 cis:dim d2:m d4:m a
  d2:m d4 g:m a2 d4:m a d2:m f a d:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Roz -- kwi -- ta -- ją pą -- ki bia -- łych róż, Ja -- siu -- leń -- ku, wróć z_wo -- jen -- ki już,
  wróć, u -- ca -- łuj, jak za daw -- nych lat, dam ci za to ró -- ży naj -- pięk -- niej -- szy kwiat,
  wróć, u -- ca -- łuj, jak za daw -- nych lat, dam ci za to ró -- ży naj -- pięk -- niej -- szy kwiat.
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Kładłam ci ja idącemu w bój,"
            "Białą różę na karabin twój,"
            "Nimeś odszedł, mój Jasieńku, stąd,"
            "Nimeś próg przestąpił, kwiat na ziemi zwiądł."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Ponad stepem nieprzejrzana mgła,"
            "Wiatr w burzanach cichuteńko łka,"
            "Przyszła zima, opadł róży kwiat,"
            "Poszedł w świat Jasieńko, zginął po nim ślad."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Już przekwitły pąki białych róż,"
            "Przeszło lato, jesień, zima już,"
            "Cóż ci teraz dam, Jasieńku, hej,"
            "Gdy z wojenki wrócisz do dziewczyny swej?"
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "5. "
          \column	{
            "W pustym polu zimny wicher dmie,"
            "Już nie wróci twój Jasieńko, nie,"
            "Śmierć okrutna zbiera krwawy łup,"
            "Zakopali Jasia twego w ciemny grób."

          }
        }
        \hspace #0.1
        \line {
          "6. "
          \column {
            "Jasieńkowi nic nie trzeba już,"
            "Bo mu kwitną pąki białych róż,"
            "Tam pod jarem, gdzie w wojence padł,"
            "Wyrósł na mogile białej róży kwiat."
          }
        }
        \hspace #0.1
        \line {
          "7. "
          \column {
            "Nie rozpaczaj, lube dziewczę, nie,"
            "W polskiej ziemi nie będzie mu źle,"
            "Policzony będzie trud i znój,"
            "Za Ojczyznę poległ ukochany twój."
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \scoretempomarker
    %	\new ChordNames { \germanChords \akordy }
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
