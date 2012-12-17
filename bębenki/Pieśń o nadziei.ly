\version "2.17.3"
#(set-global-staff-size 17.5)

\header	{
  title = "Pieśń o nadziei"
  poet = "słowa: Ps 25"
  composer = "muzyka: Dawid Kusz OP"
}

\paper {
  paper-width = 165 \mm
  paper-height = 240 \mm
  line-width = 145 \mm
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f,8[ g8] a4 g g | g8[\cresc a]\! bes[ c] a4 a
    d8[ \f c] bes[ a] f[ g] a4 | a4 g8[ f] g4 g
  }
  g4 a bes a | f2\p f 
}
altomelody = \relative f' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4. f8 f[ d] e4 | d g g8[ e] f4
    f f c d | d d f8[ d] e4
  }
  d4 f8[ e] d4 d | f( e) d2
}
tenormelody = \relative c' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    a4 a c8[ d] c4 | bes c d d8[ c]
    bes4 d a f | f g g c
  }
  bes8[ a] g[ a] f4 f8[ g] | a4.( g8) a2
}
bassmelody = \relative f {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    f4 f c c | g4. bes16[ c] d4 d
    bes bes f'8[ e] d[ c] | bes4 b c c
  }
  g4 g bes bes | d2 d
}
akordy = \chordmode {
  f2 c
  g2 d:m
  bes2 f4 d:m
  bes4 g c2
  g bes
  d1:m
}
%--------------------------------LYRICS--------------------------------
text = \lyricmode {
  W_swo -- im wiel -- kim
  mi -- ło -- sier -- dziu
  Bóg nas zro -- dził do na -- dzie -- i,
  do wiel -- kiej na -- dzie -- i.
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
    \new Lyrics = sopranolyrics \lyricsto soprano \text

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
  }
}


\score {
  \relative f' {
    \key d \minor
    \time 4/4
    \mark \markup "Solo na tle ostinata:"
    r8 a c a g16\melisma f\melismaEnd g4 r8
    bes8 bes c bes a16\melisma g\melismaEnd a4 r8
    r8 d d d f c4 r8
    d8 a g f g16\melisma f\melismaEnd g4 r8
    r8 a c a g16\melisma f \melismaEnd g8 g a
    bes4 c8 bes a16\melisma g\melismaEnd a4 r8
    r8 d d d c d a\melisma g\melismaEnd
    f8 f g a c\melisma bes\melismaEnd g4
    \bar "||"
    a4. c8 c4 c
    d8 d d c a4 a
    r8 bes d d c d a g
    f4 g8 a g16\melisma f\melismaEnd g4 r8
    a4 a8 c c4 c
    bes8 bes bes bes a4 a
    r8 d d d c d a g
    f4 g8\melisma a\melismaEnd g4 g
    \bar "||"
    c4 c8 c c4 c
    bes8 bes bes c d4 d
    d4 d8 d c4 d
    d8 a g f g16\melisma f\melismaEnd g4 r8
    c4 c  c c
    bes8 bes bes c a16\melisma g\melismaEnd a4 r8
    d4 d c a8\melisma g\melismaEnd
    f f g a c\melisma bes \melismaEnd c4
    \bar "||"
    <<
      {
        c4 c8 c c4 c8 c
        d8\melisma c\melismaEnd d4 r2
        r8 d8 f d c4 d8 a
        f\melisma a\melismaEnd g4 r4. c8
        c4 c8 c c4 c
        bes4 bes a a
        r8 d8 d d c4 d8 a
        g16\melisma f\melismaEnd g4.
      }
      \new Voice {
        f4 g8 a g4 g8 g
        bes4 bes r2
        r8 bes8 bes bes a4 a8 f8
        f4 d r4. e8
        f4 g8 a g4 g
        d g g8\melisma e\melismaEnd f4
        r8 f f f a4 f8 f
        d8 d4.
      }
    >>
    r2
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
}
