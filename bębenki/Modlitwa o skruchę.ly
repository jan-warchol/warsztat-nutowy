\version "2.19.1"

\header {
  title = "Modlitwa o skruchę (Psalm 51)"
  subsubtitle = "Noc Miłosierdzia, AD 1997"
  poet = "słowa: por. Ps 51 (50), 3-4.12-15"
  composer = "muzyka: Jacek Sykulski"
}
%--------------------------------MELODIA
metrumitp = {
  \key d \minor
  \time 2/2
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}

melodiaSopranu = \relative f' {
  \metrumitp
  \repeat volta 2 {
    d2 e4 f | a( g) e2 |
    f g4 a | c( bes) g2 |
    bes4 a f d | e2 e4 e
    f2 f | g f4 g | e1 | e
  }
  \cadenzaOn
  f\breve f8 d f4 f2 \cadenzaOff \bar"|"
  \cadenzaOn
  f\breve f8 d e4 e2 \cadenzaOff \bar"|"
  \cadenzaOn
  e\breve e8 c d4 d2 \cadenzaOff \bar"|"
  \cadenzaOn
  d\breve e8 d e4 e2 \cadenzaOff
  \bar"|."
}

melodiaAltu = \relative f' {
  \metrumitp
  \repeat volta 2 {
    d2 d4 d | d2 d4( c) |
    d2 c4 c | f2 f4( e) |
    c c c bes | a2 a4 a |
    a2 d4( c) | d2 d4 d | c4( d2 c4) | cis1
  }
  d\breve d8 d d4 d2 |
  c\breve c8 c c4 c2 |
  c\breve c8 c c4 bes2 |
  bes\breve bes8 bes c-\shape #'((0 . 0.25)(0 . 0.5)(0 . 0.5)(0 . 0.25)) ([ d)] cis2 |
  \bar "|."
}

melodiaTenorow = \relative f {
  \metrumitp
  \repeat volta 2 {
    a2 g4 a | bes2 a |
    a g4 f | f( bes) c2 |
    c4 c f, f | e2 e4 e |
    d( f) a2 | bes a4 a | g1 | a
  }
  a\breve a8 a bes4 bes2 |
  a\breve a8 a g4 g2 |
  a\breve a8 g f4 f2 |
  g\breve g8 g g4 a2 |
  \bar "|."
}

melodiaBasow = \relative f {
  \metrumitp
  \repeat volta 2 {
    d2 d4 d | g,2 a |
    d e4 f | d2 c |
    f4 f d d | cis( b) a a |
    d2 c | bes bes4 bes | c2( bes) |a1
  }
  d\breve d8 d bes4 bes2 |
  f'\breve f8 f c4 c2 |
  a\breve a8 a bes4 bes2 |
  g\breve g8 g c4 a2 |
  \bar "|."
}

small = {
  \override ParenthesesItem #'font-size = #-1
  \once \override ChordName #'font-size = #-1
}

akordy = \chordmode {
  \repeat volta 2 {
    d1:m g2:m a:m d2:m
    \small \parenthesize c4
    \small \parenthesize f4
    bes2:9 c2
    f2 d2:m
    a1 d2:m f2
    g2:m bes4:maj7
    \small \parenthesize g4:m
    c2 e2:dim
    a1
  }
  d\breve:m s4 bes2.
  f\breve s4 c2.
  a\breve:m s4 bes2.
  g\breve:m s4 c4 a
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  Stwórz o mój Bo -- że, stwórz o mój Bo -- że,
  we mnie ser -- ce czy -- ste i od -- nów we mnie moc Du -- cha.
  \set stanza = "1. "
  \once \override LyricText.X-offset = #-1
  "Zmiłuj się nade mną, Boże, w łaska" -- wo -- ści Swo -- jej,
  \once \override LyricText.X-offset = #-2
  "w ogromie Swej litości zgładź mo" -- ją nie -- pra -- wość.
  \once \override LyricText.X-offset = #-0.5
  "Obmyj mnie zupełnie" z_mo -- jej wi -- ny,
  \once \override LyricText.X-offset = #-0.5
  "i oczyść mnie z grze" --
  \once \override LyricText.X-offset = #-1.8
  chu mo -- je -- go.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

#(define-markup-command (u layout props t) (markup?)
   "Draw a double box around text."
   (interpret-markup layout props
     #{\markup \bold \underline #t #}))

#(define-markup-command (uu layout props t1 t2 t3)(markup? markup? markup?)
   "Draw a double box around text."
   (interpret-markup layout props
     #{\markup \concat { #t1 \bold \underline #t2 #t3 }#}))

zwrotkaII = \markup \column {
  \line { Uznaję bowiem \uu nie pra wość swoją, }
  \line { A grzech mój jest \uu za wsze "" przede mną. }
  \line { Przeciwko Tobie \uu same mu "" zgrzeszyłem }
  \line { I uczyniłem, co złe \u jest, przed Tobą. }
}
zwrotkaIII = \markup \column {
  \line { Abyś okazał się sprawiedliwy w \u Swym wyroku }
  \line { I prawy w \uu "" Swo im sądzie. }
  \line { Oto urodziłem się \uu obcią żo ny winą }
  \line { I jako grzesznika \uu poczę ła "" mnie matka. }
}
zwrotkaIV = \markup \column {
  \line { A Ty masz upodobanie w \uu u kry tej prawdzie, }
  \line { Naucz mnie \uu tajem nic "" mądrości. }
  \line { Pokrop mnie hizopem, a \uu sta nę "" się czysty, }
  \line { Obmyj mnie, a nad śnieg \uu "" wy bieleję. }
}
zwrotkaV = \markup \column {
  \line { Spraw, abym usłyszał radość \u i wesele, }
  \line { Niech się radują kości, \uu któ re "" skruszyłeś. }
  \line { Odwróć Swe Oblicze od \uu "" mo ich grzechów }
  \line { I zmaż wszystkie moje \uu "" prze winienia. }
}
zwrotkaVI = \markup \column {
  \line { Stwórz, Boże, we mnie \uu "" ser ce czyste, }
  \line { I odnów we \u mnie moc Ducha. }
  \line { Nie odrzucaj mnie od \uu Swe go "" Oblicza, }
  \line { I nie odbieraj mi Świętego \uu "" Du cha Swego. }
}
zwrotkaVII = \markup \column {
  \line { Przywróć mi radość z \uu Twoje go "" zbawienia, }
  \line { I wzmocnij mnie \uu du chem "" ofiarnym. }
  \line { Będę nieprawych \uu nau czał "" dróg Twoich, }
  \line { I wrócą do \uu Cie bie "" grzesznicy. }
}
zwrotkaVIII = \markup \column {
  \line { Uwolnij mnie, Boże, od kary za krew }
  \line { \hspace #20 przelaną, \uu Bo że, "" mój Zbawco, }
  \line { Niech sławi mój język Twoją \uu "" spra wiedliwość. }
  \line { Panie otwórz \uu "" war gi moje, }
  \line {  A usta moje będą głosić \uu "" Two ją chwałę. }
}
zwrotkaIX = \markup \column {
  \line { Ofiarą bowiem Ty się \u nie radujesz, }
  \line { A całopalenia choćbym \u dał, nie przyjmiesz. }
  \line { Boże, moją ofiarą jest \u duch skruszony, }
  \line { Pokornym i skruszonym sercem Ty, }
  \line { \hspace #25 \uu Bo że, "" nie gardzisz. }
}
zwrotkaX = \markup \column {
  \line { Panie, okaż Syjonowi łaskę w \u Twej dobroci, }
  \line { Odbuduj mury \uu "" Je ruzalem. }
  \line { Wtedy przyjmiesz prawe ofiary: dary i \uu ca ło palenia, }
  \line { Wtedy składać będą cielce na \uu Two im "" ołtarzu. }
}

%--------------------------------USTAWIENIA

#(ly:set-option 'strokeadjust #t)

#(set-global-staff-size 16)

\paper {
  indent = 2 \mm
  short-indent = 2 \mm
  left-margin = 13 \mm
  right-margin = 13 \mm
  top-markup-spacing #'basic-distance = 5
  markup-system-spacing #'basic-distance = 18
  system-system-spacing #'basic-distance = 14
  score-markup-spacing #'basic-distance = 12
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 2.5)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #0.8
odstepOdNumeruDoZwrotki = \markup \hspace #1

\layout {
  system-count = 4
  \override NoteHead #'style = #'altdefault
  \set chordNameLowercaseMinor = ##t
  \set majorSevenSymbol = \markup { 7+ }

  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
  \context {
    \Lyrics
    \override LyricText #'stencil =
    #(lambda (grob)
       (ly:stencil-scale (lyric-text::print grob) 1 1))
    \override VerticalAxisGroup
    #'nonstaff-relatedstaff-spacing #'padding = #0.7
  }
}

%--------------------------------STRUKTURA


\score {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = panie <<
      \clef treble
      \set Staff.instrumentName = \markup \center-column { S A }
      \set Staff.shortInstrumentName = \markup \center-column { S A }
      \new Voice = sopran {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \override Ambitus #'X-offset = #1.7

        \voiceOne
        \melodiaSopranu
      }
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f

        \voiceTwo
        \melodiaAltu
      }
    >>

    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
    \lyricsto sopran \tekst

    \new Staff = panowie <<
      \clef bass
      \set Staff.instrumentName = \markup \center-column { T B }
      \set Staff.shortInstrumentName = \markup \center-column { T B }
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f
        \override Ambitus #'X-offset = #1.7

        \voiceOne
        \melodiaTenorow
      }
      \new Voice = bas {
        \set Voice.midiInstrument = "clarinet"
        \dynamicDown

        \voiceTwo
        \melodiaBasow
      }
    >>
  >>
  \layout {
  }
  \midi {
  }
}

\include "notation-snippets/fill-line-evenly/definitions.ily"

\markup {
  \fill-line-evenly {
    \scale #powiekszenie-zwrotek {
      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "2."
          \odstepOdNumeruDoZwrotki
          \zwrotkaII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "3."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "4."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIV
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "5."
          \odstepOdNumeruDoZwrotki
          \zwrotkaV
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "6."
          \odstepOdNumeruDoZwrotki
          \zwrotkaVI
        }
        \odstepMiedzyZwrotkami
      }

      \null

      \override #interlinia
      \column {
        \line {
          \bold
          "7."
          \odstepOdNumeruDoZwrotki
          \zwrotkaVII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "8."
          \odstepOdNumeruDoZwrotki
          \zwrotkaVIII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "9."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIX
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "10."

          \zwrotkaX
        }
        \odstepMiedzyZwrotkami
      }

      \null
    }
  }
}

%--------------------------------STOPKA

\paper {
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 1.6)
    \center-column {
      \with-url
      #"http://lilypond.org/"
      \scale #'(0.75 . 0.75)
      #(format #f "LilyPond v~a"
         (lilypond-version)
         )
    }
  }

  oddFooterMarkup = \markup {
    \override #'(baseline-skip . 1)
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page {
          \override #'(baseline-skip . 2)
          \center-column {
            \scale #'(1 . 1)
            \fromproperty #'header:copyright
            \scale #'(0.85 . 0.85)
            "skład nut: Jan Warchoł (jan.warchol@gmail.com, 509 078 203)"
          }
        }
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
}
