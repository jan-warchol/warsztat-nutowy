\version "2.17.16"
#(set-global-staff-size 16)

\header	{
  title = \markup \larger \larger {
    Która wersja nut jest bardziej czytelna?
  }
  subtitle = \markup {
    \normal-text {
      utwór:
      \italic { Tylko w Twoim miłosierdziu }
      (P. Bębenek)
    }
  }
  tagline = \markup {
    autor analizy: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\markup \vspace #1
\markup \larger \huge \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.7)
    \larger \larger "wersja A"
  }
}
\markup \vspace #0.5

\markup \translate #'(-5.3 . 0)
\epsfile #X #130 #"tylko-w-twoim.eps"

\markup \vspace #3.1
\markup \larger \huge \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.7)
    \larger \larger "wersja B"
  }
}
\markup \vspace #0.5

\defineBarLine "finrep" #'("|." ".|:" "")

\paper {
  #(define fonts
     (make-pango-font-tree "Minion Pro"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
  top-margin = 8 \mm
  left-margin = 18 \mm
  right-margin = 17 \mm
  markup-system-spacing #'basic-distance = #5
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #10
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \key g \major
  \time 3/4
  \partial 4
  a8 b
  \repeat volta 2 {
    c4. b8 a g
    a4 a a8 b
  }
  \alternative {
    {
      g4. e8 fis g
      a2 a8 b
    }
    {
      g4. e8 g fis
      g2.
    }
  }
  \bar "finrep"
  \break
  \repeat volta 2 {
    \cadenzaOn
    g\breve a8 b a4 a
    \bar "|"
    g\breve c8 b a4 a
    \cadenzaOff
  }
}
altomelody = \relative f' {
  \key g \major
  \time 3/4
  \partial 4
  c8 d
  \repeat volta 2 {
    e4. e8 e e
    fis8 e fis4 fis16 e d8
  }
  \alternative {
    {
      e4. c8 c c
      g'4( fis) fis8 d
    }
    {
      e4. c8 e d
      d2.
    }
  }
  \bar "finrep"
  \break
  \repeat volta 2 {
    \cadenzaOn
    e\breve fis8 fis e4 e
    \bar "|"
    e\breve e8 fis g4 fis
    \cadenzaOff
  }
}
tenormelody = \relative f {
  \key g \major
  \time 3/4
  \partial 4
  a8 a
  \repeat volta 2 {
    a4. a8 a a
    a4 a a8 g
  }
  \alternative {
    {
      c4. c8 a a
      a2 a8 g
    }
    {
      c4. a8 a a
      b2.
    }
  }
  \bar "finrep"
  \break
  \repeat volta 2 {
    \cadenzaOn
    b\breve d8 d c4 c
    \bar "|"
    c\breve c8 c d4 d
    \cadenzaOff
  }
}
bassmelody = \relative f {
  \key g \major
  \time 3/4
  \partial 4
  a,8 a
  \repeat volta 2 {
    a4. a8 a a
    d4 d d8 d
  }
  \alternative {
    {
      a4. a8 a a
      d2 d8 d
    }
    {
      a4. a8 a d
      g,2.
    }
  }
  \bar "finrep"
  \break
  \repeat volta 2 {
    \cadenzaOn
    e'\breve fis8 g a4 a
    \bar "|"
    a,\breve a8 a d4 d
    \cadenzaOff
  }
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  s4
  a2.:m d
  \once \override ChordName #'Y-offset = #-1
  a:m d
  \once \override ChordName #'Y-offset = #-1
  a:m g
  \cadenzaOn
  e\breve:m d4 a2:m
  a\breve:m7 s4 d2
  \cadenzaOff
}
%--------------------------------LYRICS--------------------------------
bolden = {
  \once \override LyricText #'font-name = #"Minion Pro Bold"
}

text = \lyricmode {
  Tyl -- ko w_Two -- im mi -- ło -- \tweak #'X-offset #-0.8 LyricText sier --
  \tweak #'X-offset #-1 LyricText dziu,
  \tweak #'X-offset #-0.3 LyricText Pa --
  \tweak #'X-offset #-0.4 LyricText nie
  \tweak #'X-offset #-0.8 LyricText mój,
  na -- dzie -- ja ma. Tyl -- ko
  mój, na -- dzie -- ja ma.
  \set stanza = "1."
  \once \override LyricSpace #'minimum-distance = #2
  \tweak #'X-offset #-1.5 "Chcę Cię wywyższać, Boże"
  \bolden \markup \underline mój i kró -- lu,
  \once \override LyricSpace #'minimum-distance = #2
  \tweak #'X-offset #-0.5 "i błogosławić imię Twe na zawsze"
  \bolden \markup \underline i na wie -- ki.
}
secondverse = \lyricmode {
  \repeat unfold 22 \skip4
  \once \override LyricSpace #'minimum-distance = #2
  \tweak #'X-offset #-1.5 "Każdego dnia będę Ciebie"
  \bolden \markup \underline bło -- go -- sła -- wił,
  \tweak #'X-offset #-0.5 "i na wieki wysławiał"
  \bolden \markup \underline Two -- je i -- mię.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    %\new ChordNames { \germanChords \akordy }
    \new Staff = women \with {
      instrumentName = \markup \center-column { S A }
      shortInstrumentName = \markup \center-column { S A }
    } <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics = sopranolyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1.9
    }
    \lyricsto soprano \text
    \new Lyrics = sopranolyrics \with {
    }
    \lyricsto soprano \secondverse

    \new Staff = men \with {
      instrumentName = \markup \center-column { T B }
      shortInstrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    \override NoteHead #'style = #'altdefault
    indent = 0
    \override LyricText #'font-name = #"Minion Pro Medium"
    \override LyricText #'font-size = #1.5
    \set Timing.beamHalfMeasure = ##f
  }
}

\markup \vspace #3.5

\markup \large \larger \fill-line {
  \null
  \override #'(line-width . 110)
  \column {
    \justify {
      Porównując nuty znalezione na stronie
      \smaller \smaller \typewriter
      \with-url #"http://chomikuj.pl/Rabjan/Dokumenty"
      { http://chomikuj.pl/Rabjan }
      (wersja \concat { \bold A ) }
      z przygotowanymi przeze mnie "w programie" LilyPond
      (wersja \concat { \bold B ), }
      można zauważyć, że z czytelnych nut wygodniej
      śpiewać "i uczyć się" partii.
      "W wersji" \bold A widać często spotykane błędy składu, m.in.:
    }
  }
  \null
}
\markup \vspace #0.2
\markup \large \larger \fill-line {
  \null
  \line {
    \column  {
      "• zbyt mała czcionka,"
      "• wielki odstęp przed pierwszymi nutami,"
      "• niewłaściwie podpisane pięciolinie,"
    }
    \hspace #7
    \column {
      "• w zwrotce nie powinno być metrum,"
      "• źle ustawiony tekst recytatywu,"
      "• sylaby po recytatywie nie są wyróżnione."
    }
  }
  \null
}
