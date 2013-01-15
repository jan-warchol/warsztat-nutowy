%{TODO:
  jak zrobić page breaka w środku tekstu ze zwrotkami?
  Jak elegancko ukryć pięciolinie panów (tudzież "połączyć" je z paniami)
  żeby jednoczeście ambitus uwzględnił ukryty fragment?

  akordy:
  w taktach 10 i 12

  czy zwrotka jest harmonizowalna?
%}

\version "2.17.3"

\header	{
  title = "Oto są baranki młode"
  poet = "słowa: Kyriale Benedyktyńskie"
  composer = "muzyka: Jacek Gałuszka OP"
}
commonprops = {
  \autoBeamOff
  \key c \major
  \time 6/8
  \tempo 4.=70
}
\paper {
  page-count = #1
}
#(set-global-staff-size 19)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  a4.^\markup { \italic refren } g | c b8 c d | c4.( b) | a2. |
  a4. g | g g8 g g | a4 a8 a4 c8 | c4. b |
  % 9
  c8 c c c c c | c4. b | c8 c c c c c | c4. b |
  \set Staff.shortInstrumentName = \markup { \column { "S   " "T   " "A   " "B   " } }
  c d8([ c)] b | a4. c4 e8 | d2. | c | \break
  % zwrotka
  a4^\markup { \italic zwrotka } b8 c c4 | b a16[( g]) a8 a4 |
  a b8 c c4 | b a16[( g]) a8 a4 |
  % 21
  e' d16([ c]) b4 c8 | d4 c16([ b)] a4 b8 |
  c4 b16([ a)] g8 g4 | b c8 b4. | a2.
  \bar "|."
}
altomelody = \relative f' {
  f4. d | g g8 g g | a4.( g) | e2. |
  f4. d | e e8 e e | e4 e8 fis4 a8 | g4. g |
  % 9
  g8 g g a a a | d,4. d | g8 g g a a a | d,4. d |
  g d4 d8 | f4. g4 g8 | g4.( f) | e2. |
  % zwrotka
  a4 g8 f e4 | d8([ e)] f f e4 |
  f4 g8 f e4 | d8([ e)] f f e4 |
  % 21
  e4 f8 g4 a8 | f4 g8 f4 g8 |
  f4 f8 g d4 | d e8 e4. | a2.
  \bar "|."
}
tenormelody = \relative c' {
  c4. b | c d8 d d | f4.( d) | c2. |
  c4. b | c c8 c c | c4 c8 d4 d8 | d4. d |
  % 9
  c8 c c c c c | b4. b | c8 c c c c c | b4. b |
  c4. b4 b8 | c4. c4 c8 | b2. | c |
  %{ zwrotka
     a4 b8 c c4 | b a16([ g)] a8 a4 |
     a4 b8 c c4 | b a16([ g)] a8 a4 |
     % 21
     e' d16([ c]) b4 c8 | d4 c16([ b)] a4 b8 |
     c4 b16([ a)] g8 g4 | b c8 b4. | a2.
     \bar "|." %}
}
bassmelody = \relative f {
  f4. g | e g8 g g | f4.( g) | a2. |
  f4. g | c, c8 c c | a'4 g8 d4 fis8 | g4. f |
  % 9
  e8 e e f f f | g4. f | e8 e e f f f | g4. f |
  e g4 g8 | f4. e4 c8 | g'2. | c, |
  %{ zwrotka
     a'4 g8 f e4 | d8([ e)] f f e4 |
     f4 g8 f e4 | d8([ e)] f f e4 |
     % 21
     e4 f8 g4 a8 | f4 g8 f4 g8 |
     f4 f8 g d4 | d e8 e4. | a2.
     \bar "|." %}
}
akordy = {
  \chordmode {
    f4. g c g f g a2.:m
    f4. g c2. a4.:m d:7 g:sus4 g:7
    c4. f
  } < g, b, d c' > \chordmode { b:dim c f } < g, b, d c' > \chordmode {
    b:dim
    c4. g f c g2.:7 c
    a2.:m e4:m f a:m a2.:m e4:m f a:m
    e2.:m d:m f4. g b:m e:m a2.:m
  }
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  O -- to są ba -- ran -- ki mło -- de,
  o -- to ci, co za -- wo -- ła -- li Al -- le -- lu -- ja!
  Do -- pie -- ro przy -- szli do zdro -- jów, świa -- tło -- ścią się na -- peł -- ni -- li,
  al -- le -- lu -- ja, al -- le -- lu -- ja!
  \set stanza = "1. "
  Na Ba -- ran -- ka Pań -- skich go -- dach,
  w_szat świą -- te -- cznych czy -- stej bie -- li,
  po krwa -- we -- go mo -- rza wo -- dach
  nie -- śmy Pa -- nu pieśń we -- se -- li!
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "W Swej miłości wiekuistej On nas Swoją Krwią częstuje,"
            "Nam też Ciało Swe przeczyste Chrystus Kapłan ofiaruje."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Na drzwi świętą Krwią skropione anioł mściciel z lękiem wziera,"
            "Pędzi morze rozdzielone, wrogow w nurtach swych pożera."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Już nam Paschą Tyś jest Chryste, Wielkanocną też Ofiarą,"
            "Tyś przaśniki nasze czyste, dla dusz prostych z szczerą wiarą."
          }
        }
        \hspace #0.1
        \line {
          "5. "
          \column {
            "O Ofiaro Niebios święta, Ty moc piekła pokonywasz"
            "Zrywasz ciężkie śmierci pęta, wieniec życia nam zdobywasz."
          }
        }
        \hspace #0.1
        \line {
          "6. "
          \column	{
            "Chrystus, piekło pogromiwszy, Swój zwycięski znak roztacza,"
            "Niebo ludziom otworzywszy, króla mroków w więzy wtłacza."
          }
        }
        \hspace #0.1
        \line {
          "7. "
          \column {
            "Byś nam wiecznie, Jezu drogi, Wielkanocną był radością,"
            "Strzeż od grzechu śmierci srogiej odrodzonych Twą miłością."
          }
        }
        \hspace #0.1
        \line {
          "8. "
          \column {
            "Chwała Ojcu i Synowi, który z martwych żywy wstaje,"
            "I Świętemu też Duchowi niech na wieki nie ustaje."
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------LAYOUT--------------------------------
\score {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = women {
      \clef treble
      \set Staff.instrumentName = \markup { \column { "S " "A " } }
      \set Staff.shortInstrumentName = \markup { \column { "S " "A " } }
      <<
        \new Voice = soprano {
          \voiceOne
          \commonprops
          \set Voice.midiInstrument = "clarinet"
          \sopranomelody
        }
        \new Voice = alto {
          \voiceTwo
          \commonprops
          \set Voice.midiInstrument = "english horn"
          \altomelody
        }
      >>
    }
    \new Lyrics = alllyrics \lyricsto soprano \text

    \new Staff = men {
      \clef "treble_8"
      \set Staff.instrumentName = \markup { \column { "T " "B " } }
      \set Staff.shortInstrumentName = \markup { \column { "T " "B " } }
      <<
        \new Voice = tenor {
          \voiceOne
          \commonprops
          \set Voice.midiInstrument = "english horn"
          \tenormelody
        }
        \new Voice = bass {
          \voiceTwo
          \commonprops
          \set Voice.midiInstrument = "clarinet"
          \bassmelody
        }
      >>
    }
  >>
  \layout {
    indent = 0\cm
  }
}

\stanzas
