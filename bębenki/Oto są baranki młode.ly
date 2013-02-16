%{TODO:
  jak zrobić page breaka w środku tekstu ze zwrotkami?
  Jak elegancko ukryć pięciolinie panów (tudzież "połączyć" je z paniami)
  żeby jednoczeście ambitus uwzględnił ukryty fragment?

  Akordy wziąłem z Otwórzcie Serca, ale nie jestem pewien w niektórych
  miejscach, np. w przedostatnim takcie zwrotki
  (i w ogóle cała zwrotka sprawia wrażenie że harmonizator
  nie brał pod uwagę drugiego głosu)
%}

\version "2.17.3"
#(set-global-staff-size 18)

\header	{
  title = "Oto są baranki młode"
  poet = "słowa: Kyriale Benedyktyńskie"
  composer = "muzyka: Jacek Gałuszka OP"
}
commonprops = {
  \key c \major
  \time 6/8
  \tempo 4.=70
}
\paper {
  page-count = #1
  left-margin = 14 \mm
  right-margin = 12 \mm
  top-markup-spacing #'basic-distance = 6
  markup-system-spacing #'basic-distance = 20
  system-system-spacing #'basic-distance = 17
  score-markup-spacing #'basic-distance = 17
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  a4. g | c b8 c d | c4.( b) | a2. |
  a4. g | g g8 g g | a4 a8 a4 c8 | c4. b |
  % 9
  c8 c c c c c | c4. b | c8 c c c c c | c4. b |
  \set Staff.shortInstrumentName = \markup { \column { "ST " "AB " } }
  c d8([ c)] b | a4. c4 e8 | d2. | c | \break
  \bar "||"
  % zwrotka
  a4 b8 c c4 | b a16[( g]) a8 a4 |
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
  \bar "||"
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
  \bar "||"
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
  \bar "||"
  %{ zwrotka
     a'4 g8 f e4 | d8([ e)] f f e4 |
     f4 g8 f e4 | d8([ e)] f f e4 |
     % 21
     e4 f8 g4 a8 | f4 g8 f4 g8 |
     f4 f8 g d4 | d e8 e4. | a2.
     \bar "|." %}
}

parch = #(define-music-function (parser location msik) (ly:music?)
           #{
             \once \override ChordName #'font-size = #-1 \parenthesize #msik
           #})

akordy = \chordmode {
  f4. g c g8 \parch g:7 \parch g f4. g a2.:m
  f4. g c2. a4.:m d4 \parch d8:7 g4. \parch g:7
  c4. f
  g \parch g:7 c f
  g \parch g:7
  c4. g8 \parch a:m \parch e:m f4. c4 \parch c8:7 g2. c
  a4:m g8 f4. g4. a:m a4:m g8 f4. g4. a:m
  a4.:m g d:m a:m f4. g g4 e8:m a4.:m f2.
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = \markup { \italic Ref.}
  O -- to są ba -- ran -- ki mło -- de,
  o -- to ci, co za -- wo -- ła -- li Al -- le -- lu -- ja!
  Do -- pie -- ro przy -- szli do zdro -- jów, świa -- tło -- ścią się na -- peł -- ni -- li,
  al -- le -- lu -- ja, al -- le -- lu -- ja!
  \set stanza = "1."
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
    \set chordNameLowercaseMinor = ##t
    \override ChordNames.ParenthesesItem #'font-size = 0
  }
}

\stanzas
