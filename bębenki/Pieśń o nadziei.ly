\version "2.17.2"
#(set-global-staff-size 17)

right = { \once \override LyricText #'self-alignment-X = #-0.8 }
righty = { \once \override LyricText #'self-alignment-X = #-0.6 }
rightyy = { \once \override LyricText #'self-alignment-X = #-0.4 }
rightyyy = { \once \override LyricText #'self-alignment-X = #-0.2 }
left = { \once \override LyricText #'self-alignment-X = #0.8 }
lefty = { \once \override LyricText #'self-alignment-X = #0.6 }
leftyy = { \once \override LyricText #'self-alignment-X = #0.4 }
leftyyy = { \once \override LyricText #'self-alignment-X = #0.2 }

m = #(define-music-function (parser location off) (number?)
       #{
         \once \override Lyrics.LyricText #'X-offset = #off
       #})

\header	{
  title = \markup {
    Porównanie składu nut
  }
  subtitle = \markup {
    \normal-text { utwór: \italic { Pieśń o nadziei } }
  }
  tagline = \markup \normal-text {
    autor analizy: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\markup \vspace #2
\markup \large \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    "wersja A"
  }
}
\markup \vspace #0.5

\markup \translate #'(-1.5 . 0)
\epsfile #X #99 #"pieśń.eps"

\markup \vspace #2.5
\markup \large \bold {
  \override #'(thickness . 2)
  \override #'(box-padding . 0.4)
  \box {
    \pad-to-box #'(0 . 0) #'(0 . 2.1)
    "wersja B"
  }
}
\markup \vspace #1

\paper {
  line-width = 145 \mm
  top-margin = 14 \mm
  system-system-spacing #'basic-distance = #14
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f,8[ g8] a4 g g | g8[-\tweak #'Y-offset #2 \cresc a]\! bes[ c] a4 a
    d8[ -\tweak #'X-offset #-1.3 \f c] bes-\tweak #'positions #'(2.80 . 2.50) [ a] f[ g] a4 | a4 g8[ f] g4 g
  }
  g4 a bes a | f2\p f 
  \bar "|."
}
altomelody = \relative f' {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    \once \override Dots #'extra-offset = #'(-0.2 . 0)
    \once \override Dots #'X-extent = #'(0 . 1.3)
    f4. f8 f[ d] e4 | d g g8[ e] f4
    f f c d | d d f8[ d] e4
  }
  d4 f8[ e] d4 d | f( e) d2
  \bar "|."
}
tenormelody = \relative c' {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    a4 a c8[ d] c4 | bes c d d8[ c]
    bes4 d a f | f g g c
  }
  bes8[ a] g[ a] f4 f8[ g] | a4.( g8) a2
  \bar "|."
}
bassmelody = \relative f {
  \dynamicUp
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4 f c c | g4. bes16[ c] d4 d
    bes bes f'8[ e] d[ c] | bes4 b c c
  }
  g4 g bes bes | d2 d
  \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  f2 c
  g2 d:m
  bes2 f4 d:m
  bes4 g c2
  g bes
  d1:m
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  \m #-3.2 W_swo -- \m #0 im \m #0 wiel -- \m #-1 kim
  mi -- ło -- \righty sier -- \rightyy dziu
  Bóg nas zro -- \rightyy dził do na -- \rightyy dzie -- i,
  \rightyy do \m #0 wiel -- kiej \rightyy na -- \m #0 dzie -- i.
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
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
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1.5
    }
    \lyricsto soprano \text

    \new Staff = men <<
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
    \autoBeamOff
    indent = 0\cm
  }
}

\markup \vspace #3
\markup \fill-line {
  \null
  \override #'(thickness . 1.5)
  \override #'(span-factor . 2/3)
  \draw-hline
  \null
}
\markup \vspace #2.5

\markup \large \fill-line {
  \null
  \column {
    \justify {
      Powyżej widać dwie wersje nut tego samego utworu:
      pochodzące "z drugiego" tomu śpiewnika
      \italic "Niepojęta Trójco" \concat { ( \bold A ) }
      "i przygotowane" przeze mnie \concat { ( \bold B ). }
      Dwie rzeczy "w wersji" \bold A są dziwne:
    }
    \vspace #0.2
    "• dlaczego użyto tak małej czcionki bez potrzeby?"
    \line {
      •
      \column {
        \line {
          dlaczego zapisano dwie wolty, niepotrzebnie powtarzając
          takt \italic "“do nadziei”"?
        }
        "Przecież za każdym razem jest taki sam."
      }
    }
  }
  \null
}

%{
\score {
  \relative f' {
    \key d \minor
    \time 4/4
    \once \override Score.RehearsalMark #'self-alignment-X = #-1
    \mark \markup "Solo na tle ostinata:"
    r8 a c a g16\melisma f\melismaEnd g4 r8
    bes8 bes c bes a16\melisma g\melismaEnd a4 r8
    r8 d d d f c4 r8
    d8 a g f g16\melisma f\melismaEnd g4 r8
    r8 a c a g16\melisma f \melismaEnd g8 g a
    bes4 c8 bes a16\melisma g\melismaEnd a4 r8
    r8 d d d c d a\melisma g\melismaEnd
    f8 f g a c\melisma bes\melismaEnd g4
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #1
    \mark \markup \small \italic "(... do wielkiej nadziei)"
    \bar "||"
    \break
    a4. c8 c4 c
    d8 d d c a4 a
    r8 bes d d c d a g
    f4 g8 a g16\melisma f\melismaEnd g4 r8
    a4 a8 c c4 c
    bes8 bes bes bes a4 a
    r8 d d d c d a g
    f4 g8\melisma a\melismaEnd g4 g
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #1
    \mark \markup \small \italic "(... do wielkiej nadziei)"
    \bar "||"
    \break
    c4 c8 c c4 c
    bes8 bes bes c d4 d
    d4 d8 d c4 d
    d8 a g f g16\melisma f\melismaEnd g4 r8
    c4 c  c c
    bes8 bes bes c a16\melisma g\melismaEnd a4 r8
    d4 d c a8\melisma g\melismaEnd
    f f g a c\melisma bes \melismaEnd c4
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #1
    \mark \markup \small \italic "(... do wielkiej nadziei)"
    \bar "||"
    \break
    <<
      {
        \voiceOne
        c4 c8 c c4 c8 c
        d8\melisma c\melismaEnd d4 \oneVoice r2
        r8 \voiceOne d8 f d c4 d8 a
        f\melisma a\melismaEnd g4 \oneVoice r4. \voiceOne c8
        c4 c8 c c4 c
        bes4 bes a a
        \oneVoice r8 \voiceOne d8 d d c4 d8 a
        g16\melisma f\melismaEnd g4.
      }
      \new Voice {
        \voiceTwo
        f4 g8 a g4 g8 g
        bes4 bes s2
        s8 bes8 bes bes a4 a8 f8
        f4 d s4. e8
        f4 g8 a g4 g
        d g g8\melisma e\melismaEnd f4
        s8 f f f a4 f8 f
        d8 d4.
      }
    >>
    \oneVoice
    r2
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #1
    \mark \markup \small \italic "(... do wielkiej nadziei)"
    \bar "|."
  }
  \addlyrics {
    \set stanza = "1."
    Do Cie -- bie, Pa -- nie,
    wzno -- szę du -- szę mo -- ją,
    racz mnie wy -- słu -- chać
    w_łas -- ka -- woś -- ci swo -- jej.
    Mo -- i wro -- go -- wie
    nie pa -- nu -- ją na -- de mną,
    bo kto Ci u -- fa, nie
    bę -- dzie za -- wsty -- dzo -- ny.
    \set stanza = "2."
    Daj mi po -- znać
    Two -- je dro -- gi, Pa -- nie,
    i na -- ucz cho -- dzić mnie Two --
    i -- mi ścież -- ka -- mi.
    Pro -- wadź mnie w_praw -- dzie
    wed -- ług Twych po -- u -- czeń.
    Bo -- że mój, Zbaw -- co, w_To -- bie
    mam na -- dzie -- ję.
    \set stanza = "3."
    Wspom -- nij na swo -- je
    mi -- ło -- sier -- dzie, Pa -- nie,
    na swo -- ją mi -- łość,
    któ -- ra trwa od wie -- ków.
    Nie pa -- mię -- taj
    win i grze -- chów na -- szych,
    lecz o swo -- im
    wiel -- kim mi -- ło -- sier -- dziu.
    \set stanza = "4."
    Do -- bry jest Pan i łas --
    ka -- wy,
    wska -- zu -- je dro -- gę grzesz --
    ni -- kom. Po --
    ma -- ga po -- kor -- nym
    czy -- nić do -- brze,
    u -- czy u -- bo -- gich dróg swo -- ich.
  }
  \layout {
    indent = 0
  }
}
%}
