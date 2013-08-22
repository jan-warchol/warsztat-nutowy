\version "2.16.1"

% -*- master: ./pomocnicze/sopran-solo.ly;

% Uwaga! z przyczyn technicznych przed skompilowaniem
% partii trzeba zapisywać plik.

% Jeśli ten głos nie dzieli się na dolny i górny,
% wpisz całą partię tutaj a zmiennej "soprangorny"
% po prostu nie używaj.
% Jeśli głos się dzieli, wpisz tutaj DOLNĄ partię
% (łącznie z tym, co jest śpiewane unisono):

das = {
  \slurDashed
  \set melismaBusyProperties = #'()
}
nor = {
  \slurSolid
  \unset melismaBusyProperties
}

soprandolny = {
  \key g \major

  \time 6/8


  %partia sopranów s2, i solo
  % trzeba poprawić oznaczenia dynamiczne powinny być na górze a są na dole
  \tempo "Lilting" 4.=78
  g'8 ^\f g'  g' b' b' b'
  c'' b' a' \das b'4.( ^\<
  es''8.) \tenuto \! \nor es''16 es''8 c'' c'' c''
  b'4 ^\> b'8 \! r g' b'
  d'' d''16 ( \melisma c'' d''8 ) \melismaEnd  f'' e'' c''
  d''2.
  f''8 \tenuto e'' c'' d''4.~
  d''4 r8 r4.
  R1*6/8
  g'8 ^\mf g' g' a' g' a'
  \time 9/8 e'' d'' c'' e'' (\melisma d'') \melismaEnd c''16 (\melisma b') \melismaEnd \das a'4. ( \<
  \time 6/8 c'') \! ^\f \nor b' \breathe
  b'4 b'8 d''4 d''8
  c''4 c''8 b' b' c''
  d'' (\melisma b' g') \melismaEnd a'4.
  r8 fis' ^\p g' a' (\melisma fis' d') \melismaEnd
  e'2.~
  e'4. ~ e'8 r r
  r1*6/8
  g'8 ^\cresc g' g' g'4. \breathe
  g'8 ^\f g' g' b' b' b'
  c'' b' a' \das b'4. (
  es''8.) \tenuto \nor es''16 es''8 c'' c'' c''
  b'4 ^\> b'8 \tenuto \! r g' b'
  d'' d''16 ( \melisma c'' d''8 ) \melismaEnd f'' ^\tenuto e'' c''
  d''2.
  f''8 ^\tenuto e'' c'' d''4. \breathe
  g'8 ^\mf ^"Tutti" g' g' d'' d'' d'' |
  c'' d'' e'' d''4. \breathe
  c''8 c'' c'' b'4 b'8
  a'4 a'8 b'4. \breathe
  a'4 a'8 ^\> g'4 g'8 \! ^"rit."
  f'4^\> a'8 e'4. \! ^\p
  %solo
  \tempo "Ad lib. Solo Soprano"
  % dodac expressivo, zmiana kresek taktowych
  \cadenzaOn
  \set melismaBusyProperties = #'()
  r4 ^\fermata b'8[ b'] e''4. d''8 e''4 b'8[ c'']
  d''[( \melisma b']) \melismaEnd g'[ a'] b'4 b' ^\fermata \bar ":"
  r4 ^\fermata b'8 g''4. fis''8[ e'' d''] \bar ""
  e''[ e''] b'[ c''] d''4 d'' \fermata \bar ":"
  r8 ^\fermata g' a'[ c''] \times 2/3 {d''4 \cresc  e''\! f''~\melisma} f''4^\fermata \melismaEnd
  c''8[ c''] \melisma a''4~ a''8[ \melismaEnd g''] e''[ f''!]
  \bar "|" \noBreak
  \unset melismaBusyProperties
  g''4 g''4~ ^\fermata \melisma \bar "||"% sprawdzić ten takt powinny być w takcie 6/8 dwie cwierćnuty
  \cadenzaOff
  \tempo "Slower (in 6)" 8.= 86
  g''4 \melismaEnd r8 r4.
  r8 b' ^\p ^ "legato" c'' d'' (\melisma b' g') \melismaEnd
  a'2. \breathe
  \time 5/4 a'2. ^\> a'2~ \melisma % jak wstawić ósemka równa cwierćnucie
  a'4\! \melismaEnd r4 r r2
  r1*5/4
  r1*5/4
  g'4^\mp ^"sempre legato (without accents)" g' d'' b' a'
  g' fis' e' d' g'
  a' b' a'2 g'4~ \melisma
  g'2 \melismaEnd r4
  \override TieColumn #'tie-configuration = #'((-2.4 . -1))
  g'2~ \melisma
  g'1 ~ g'4~
  g'1 ~ g'4~
  g'1 ~ g'4~
  g'1 ~ g'4\melismaEnd
  \revert TieColumn #'tie-configuration
  \oneVoice
  R1*5/4 \bar "||"  % pod koniec pauzy brak rit.
  \time 6/8
  <<
    {
      \cadenzaOn
      r4 ^\fermata
      \tupletUp
      \override TupletBracket #'thickness = #2.2
      \override TupletBracket #'edge-height = #'(6 . 6)
      \override TupletBracket #'positions = #'(4 . 4)
      \override TupletBracket #'shorten-pair = #'(-2 . -2)
      \override TupletNumber #'text = \markup \musicglyph #"one"
      \set melismaBusyProperties = #'()
      \tuplet 1/1 { g'8[ g' g'] d''[ d'' d''] e''[ d'' c''] d''4. }
      \noBreak
      \override TupletNumber #'text = \markup \musicglyph #"two"
      \tuplet 2/2 { g''4 g''8 fis''4 fis''8 e''4 e''8 d''4. }
      \noBreak
      \override TupletNumber #'text = \markup \musicglyph #"three"
      \tuplet 3/3 {
        r8 b'[ c'']
        \unset melismaBusyProperties
        d''( [ \melisma b' g' ]) \melismaEnd a'4.
      }

      % cont sopr solo ad lib. ^"(continue Sop. solo ad lib.)"
      % widełki diminuendo do piana ^ \p
      \cadenzaOff
      \override Staff.BarLine #'transparent = ##t
      s1*6/8*2
      \revert Staff.BarLine #'transparent
      R1*6/8
    }
    \new Dynamics \with { alignAboveContext = topstaff } {
      \override TextSpanner.bound-details.left.text = "seconds"
      \override TextSpanner.Y-extent = #'(-0.5 . 0.2)
      \override TextSpanner.style = #'line
      \cadenzaOn
      s2.*1/2\p\< \startTextSpan
      s2.\mp\< ^"5''"
      s4
      s4.\mf\< ^"10''"

      s4.
      s4.\f\< ^"15''"
      s4.
      s4.\ff\> ^"20''"

      s4
      s4.\f\> ^"25''"
      s4.\mf\> ^"30''"
      s8\mp\> ^"35''"
      \stopTextSpan
      \cadenzaOff
      s2.*2
      s2.\!
    }
  >>

  g'8 ^\mf \< g' g' g'4.\! \breathe
  g'8 ^\f g' g' b' b' b'
  c'' b' a' b'4.
  es''8.\tenuto es''16 es''8 c'' c'' c''
  b'4 ^\> b'8 \tenuto \! r8 ^\mf g' b'
  d'' d''16 ( \melisma c'' d''8 )\melismaEnd f'' \tenuto e'' c''
  d''2. ^\<
  d''4. ^\! ^\f b'4. \breathe
  r8 d'' \tenuto ^\mf ^\< b' r d'' \tenuto b'
  r8 d'' \tenuto b' r d'' \tenuto b'
  r8 d'' f'' d''4.~ \melisma
  d''4. \melismaEnd d''4 ^\! ^\ff r8 \bar "|."

}


% Jeśli głos się dzieli, tutaj wpisz GÓRNĄ partię
% (łącznie z tym, co jest śpiewane unisono).
% Zapewne będzie Ci wygodnie skopiować wspólne
% fragmenty z tego, co jest już wpisane powyżej.
% Żeby odpowiednio połączyć obie partie, użyj
% \unisono { } , \rownyRytm { } i \podzial { }
% na odpowiednich fragmentach tej partii.

soprangorny = {
  \key g \major

  \time 6/8


  %partia sopranów s2, i solo
  % trzeba poprawić oznaczenia dynamiczne powinny być na górze a są na dole
  \unisono { g'8 ^\f  g'  g' } d'' d'' d''
  e'' d'' c'' d''4.
  g''8. ^\tenuto  g''16 g''8 f'' f'' f''
  d''4 d''8 \! r \unisono {
    g' b'
    d'' d''16 ( \melisma c'' d''8 ) \melismaEnd  f'' e'' c''
    d''2.
    f''8 ^\tenuto e'' c'' d''4.~
    d''4 r8 r4.
    R1*6/8
    g'8  g' g'
  } d'' c'' d''
  \time 9/8 g'' fis'' e'' \podzial { g'' (\melisma fis'') \melismaEnd e'' d''4. }
  \time 6/8 g'' d'' \breathe
  g''4 g''8 fis''4 fis''8
  e''4 e''8 d'' \unisono {
    b' c''
    d'' (\melisma b' g') \melismaEnd a'4.
  }
  r8 b'  c'' d'' (\melisma b' g') \melismaEnd
  a'2.~
  a'4. ~ a'8 r r
  r1*6/8
  \unisono { g'8  g' g' } d''4. \breathe
  \unisono { g'8 g' g' } d'' d'' d''
  e'' d'' c'' d''4.
  g''8. ^\tenuto g''16 g''8 f'' f'' f''
  d''4  d''8 ^\tenuto \! \unisono {
    r g' b'
    d'' d''16 ( \melisma c'' d''8 ) \melismaEnd f'' ^\tenuto e'' c''
    d''2.
    f''8 ^\tenuto e'' c'' d''4. \breathe
    g'8  g' g' d'' d'' d''
    c'' d'' e'' d''4. \breathe
    c''8 c'' c'' b'4 b'8
    a'4 a'8 b'4. \breathe
    a'4 a'8  g'4 g'8
    f'4 a'8 e'4.
  }
  \unisono {
    %solo
    \cadenzaOn
    \tempo "Ad lib. Solo Soprano"
    % dodac expressivo, zmiana kresek taktowych
    r4 ^\fermata  b'8 b' e''4.
    d''8 e''4 b'8 c'' d'' \melisma
    b' \melismaEnd g' a' b'4 b' ^\fermata
    r4 ^\fermata b'8 g''4.
    fis''8 e'' d'' e'' e'' g'
    c'' d''4 d'' \fermata
    r8 ^\fermata g' a' c'' \times 2/3 {d''4  e'' f''~\melisma}
    f''4^\fermata \melismaEnd c''8 c'' \melisma a''4~
    a''8 \melismaEnd g'' e'' f''
    g''4 g''4~ ^\fermata \melisma % sprawdzić ten takt powinny być w takcie 6/8 dwie cwierćnuty
    \cadenzaOff
    g''4 \melismaEnd r8 r4.
    r8 b'  c'' d'' (\melisma b' g') \melismaEnd
    a'2. \breathe
    \time 5/4 \tempo \markup { "a tempo"  \note #"8" #1 = \note #"4" #1 }  a'2.  a'2~ \melisma % jak wstawić ósemka równa cwierćnucie
    a'4\! \melismaEnd r4 r r2
    R1*5/4
    R1*5/4
    g'4^"sempre legato (without accents)" g' d'' b' a'
    g' fis' e' d' g'
    a' b' a'2 g'4~ \melismaEnd
    g'2
  } r4
  \hide Score.BarNumber
  \voiceTwo
  <<
    \new Voice = topsop {
      \voiceOne
      \override TextScript #'stencil = ##f
      g'4 ^\< g'
      d'' b' a' ^\! g' fis'
      e' d' g' a' b'
      a'2.  g'2~ ^\> \melisma
      g'1 ~ g'4 ^\!\melismaEnd
    }
    \new Lyrics \with { alignAboveContext = topstaff }
    \lyricsto topsop \lyricmode {
      O my soul praise Him for He
      is thy health and sal -- va -- tion. __
    }
  >>
  \oneVoice
  \undo \hide Score.BarNumber
  \unisono {
    R1*5/4 \bar "||"  % pod koniec pauzy brak rit.
    %uwaga trzeba porobic porzadek z tymi taktami ad lib.

    \time 6/8
    \once \override Score.MetronomeMark #'extra-offset = #'(0 . 1)
    \footnote #'(1 . 1) \markup \justify \large {
      Beginning with one soprano, then adding one by one
      in quickening succession until all have entered.
      Each singer repeats ad lib. any combination of the
      three melodic themes.  Melodies should be sung exuberantly,
      with rhythmic freedom.
    }
    Score.MetronomeMark
    \tempo "Ad lib."
    \cadenzaOn
    r4 ^\fermata
    %kanon, tu trzeba pracy kogoś obeznanego
    %1 kanon
    g'8 g' g' d'' d'' d'' e'' d'' c'' d''4.
    \bar ""

    %2 kanon
    g''4 g''8 fis''4 fis''8 e''4 e''8 d''4.
    \bar ""
    %3 kanon
    r8 b' c'' d''\melisma b' g' \melismaEnd a'4.

    % cont sopr solo ad lib. ^"(continue Sop. solo ad lib.)"
    % widełki diminuendo do piana ^ \p
    \cadenzaOff
    \override Staff.BarLine #'transparent = ##t
    \bar "|"

    s1*6/8*2
    \revert Staff.BarLine #'transparent
    R1*6/8^"Tempo primo"
    g'8  g' g'
  }
  d''4. \breathe
  \unisono { g'8  g' g' } d'' d'' d''
  e'' d'' c'' d''4.
  g''8.^\tenuto g''16 g''8 f'' f'' f'' %w nutach barak akcentu ale powinien byc skoro we wszystkich innych głosach jest
  d''4 d''8 ^\tenuto \unisono {
    r8 g' b'
    d'' d''16 ( \melisma c'' d''8 )\melismaEnd f'' ^\tenuto e'' c''
    d''2.
  }
  f''4.  d''4. \breathe
  r8 f'' ^\tenuto  d'' r f'' ^\tenuto d''
  r8 f'' ^\tenuto d'' r f'' ^\tenuto d''
  r8 \unisono { d'' f'' } g''4.~ \melisma
  g''4. \melismaEnd g''4 r8 \bar "|."


}


soprantekst = \lyricmode {
  % Tu wpisz libretto. Będzie ono przyczepione
  % do partii dolnego głosu (jeśli jest podział).

  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord,
  shout to the Lord, Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Sing to the Lord with thanks -- giv -- ing,
  Al -- le -- lu -- ia,
  \shrink #0.91 praise Him!
  \shrink #0.91 praise the Lord with joy -- ful song,
  Al -- le -- lu -- ia.
  Al -- le -- lu -- ia. __
  \shrink #0.91 Praise ye the Lord,
  All that hath life and \shrink #0.9 breath
  \shrink #0.91 praise ye the Lord.
  Shout to the Lord, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia,
  Al -- le -- lu -- ia,
  All that hath life and \shrink #0.9 breath
  \shrink #0.91 praise ye the Lord,
  sing to the Lord a new -- made song,
  \shrink #0.91 praise His name,
  Al -- le -- lu -- ia.
  % solo sopran
  Un -- to Thee,
  O Lord, have I made __ _ sup -- pli -- ca -- tion,
  and cried un -- to the rock of my sal -- va -- tion;
  but Thou hast heard my voice, __ _ and re -- newed __ _ my we -- ary
  spir -- it. __
  % koniec solo
  Al -- le -- lu -- ia,
  \shrink #0.91 praise Him. __
  \shrink #0.91 Praise to the Lord the Al -- might -- y the King of cre -- a -- tion. __
  O __
  % kanon 1 tekst
  All that hath life and \shrink #0.9 breath \shrink #0.91 praise ye the Lord
  % kanon 2 tekst
  \shrink #0.91 Praise the Lord with joy -- ful song!
  % kanon 3 tekst
  Al -- le -- lu -- ia!

  \shrink #0.91 Praise ye the Lord.
  All that hath life and \shrink #0.9 breath
  \shrink #0.91 praise ye the Lord,
  Shout to the Lord, al -- le -- lu -- ia!
  Al -- le -- lu -- ia, __
  Al -- le -- lu -- ia,
  \shrink #0.91 praise Him!
  \shrink #0.91 Praise Him,
  laud Him,
  \shrink #0.91 praise Him,
  laud Him,
  Al -- le -- lu -- ia!
}

sopran = {
  <<
    \soprandolny
    \soprangorny
  >>
}
