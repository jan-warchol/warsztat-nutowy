\version "2.15.36"

% #(set-global-staff-size 17)

\paper {
  indent = 0
  markup-system-spacing #'padding = #0.5
  score-markup-spacing #'padding = #3.3
  score-markup-spacing #'basic-distance = #0
  top-markup-spacing #'padding = #3
  ragged-bottom = ##t
}

\header {
  instrument = "Podstawy notacji muzycznej"
  tagline = \markup {
    © Jan Warchoł 2012,
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/"
    { "licencja CC by-nc-sa" }
  }
}

\markup \vspace #1

\markup \justify {
  Podstawową cechą dźwięku jest jego długość trwania, którą przedstawia
  się za pomocą kształtu.
}
\markup \justify { Cała nuta: \note #"1" #1 }
\markup \justify { Dwa razy krótsza od niej jest półnuta: \note #"2" #1 }
\markup \justify { Ćwierćnuta: \note #"4" #1 }
\markup \justify {
  Cztery ćwierćnuty trwają razem tyle co cała nuta: \note #"4" #1 + \note
  #"4" #1 + \note #"4" #1 + \note #"4" #1 = \note #"1" #1
}
\markup \justify { Ósemka: \note #"8" #1 }
\markup \justify { Szesnastka: \note #"16" #1 }
\markup \justify { i tak dalej (wzrasta liczba chorągiewek).}

\markup \justify {
  Jeśli obok siebie stoi kilka nut krótszych od ćwierćnuty, to zamiast
  chorągiewek rysuje się kreski nazywane belkami.  Na przykład tutaj jest
  ósemka i dwie szesnastki:
}
{ a'8 g'16 a'16 }

\markup \justify {
  Większość utworów jest podzielona na takty. \bold Metrum określa, ile
  nut danego rodzaju mieści się "w takcie," "np. 4/4" (oznaczane "też C)"
  to cztery ćwierćnuty w takcie, a 3/8 to trzy ósemki na takt:
}
{ \time 3/8 \autoBeamOff d'8 d' d' f' f' f' }

\markup \justify {
  Pauzy oznaczające przerwę w dźwięku też mają wartość rytmiczną.  Poniżej
  pauza całonutowa, półnutowa, ćwierćnutowa, ósemkowa i dwie szesnastkowe:
}
{ r1 r2 r4 r8 r16 r }

\markup \justify {
  \bold { Pauzy całotaktowe } to specjalny rodzaj pauz.  Są umieszczane na
  środku taktu i zawsze wyglądają jak pauzy całonutowe. Pauza całotaktowa
  w metrum 4/4 trwa tyle, co pauza całonutowa, ale w "metrum 1/4" "tyle co ćwierćnutowa"
  - mimo to obie wyglądają tak samo:
}
\score {
  { R1  \time 1/4  R4 }
  \layout { line-width = 6\cm ragged-right = ##f }
}

\markup \justify {
  Nie każda nuta jest osobnym dźwiękiem - czasami jeden dźwięk zapisuje
  się jako kilka nut połączonych łukami przedłużającymi.
  Tutaj jest jeden dźwięk trwający dwa takty:
}
{ g'1~ g' }
\markup \justify { A tu są dwa dźwięki, oba trwające po jednym takcie:}
{ g'1 g' }

\markup \justify {
  Kropka z \underline "prawej strony" nuty oznacza wydłużenie jej o "połowę:  "
  \note-by-number #1 #1 #1 "  =  "
  \note-by-number #1 #0 #1 + \note-by-number #2 #0 #1 "  =  "
  \note-by-number #2 #0 #1 + \note-by-number #2 #0 #1 + \note-by-number #2 #0 #1
}
{ g'2. r8. f'16 }

\markup \justify {
  Oprócz długości dźwięki mają też wysokość, którą przedstawia się za
  pomocą położenia nut na pięciolinii. "W zależności"
  od wysokości dźwięki mają różne nazwy (\italic uwaga! używamy nazw anglosaskich,
  czyli na dźwięk poniżej c mówimy b - nie h). Dla klucza wiolinowego
  wygląda to tak:
}
\noPageBreak
\relative f' { c4 d e f g a b c }
\addlyrics { c d e f g a b c }

\markup \justify {
  To były dźwięki odpowiadające białym klawiszom fortepianu, ale pomiędzy
  nimi są jeszcze czarne klawisze.  Nazywa się je tak: dźwięk o pół tonu
  niższy ma końcówkę -es, zaś o pół tonu wyższy końcówkę -is. Żeby zapisać
  je na pięciolinii, stosujemy znaki chromatyczne - bemole \flat oraz krzyżyki \sharp :
}

\relative f' {
  ces4 des es fes ges as bes ces cis, dis eis fis gis ais bis cis
}
\addlyrics { ces des es fes ges as bes ces cis dis eis fis gis ais bis cis }

\markup \justify {
  Znaki chromatyczne obowiązują do końca taktu:
}
{ fis'2 fis' f' f' }
\addlyrics { fis fis f f }

\markup \justify {
  Żeby było wygodniej, można zapisać znaki chromatyczne przy kluczu
  (mówimy wtedy o tonacji), wtedy działają one we wszystkich oktawach "i taktach:"
}
\markup {
  \score { { c'4 e' c'' f'' c' e' c'' f'' } \addlyrics { c e c f c e c f } \layout {} }
  \hspace #10
  \score {
    { \key d \major cis' e' cis'' fis'' cis' e' cis'' fis'' }
    \addlyrics { \markup { \bold cis } e cis fis \markup { \bold cis } e cis  fis } \layout {}
  }
}

\markup \vspace #0.5

\markup \justify {
  Żeby cofnąć działanie krzyżyka lub bemola używa się kasownika \natural (który też działa do końca taktu):
}

{ \key g \major fis' fis' f' f' bes' bes' b' b' }
\addlyrics { fis fis f f bes bes b b }

\markup \justify {
  Pamiętaj, że nuta przy której nie ma znaku chromatycznego nie musi
  oznaczać dźwięku granego na białych klawiszach (takiego o nazwie
  bez końcówek) - to zależy zarówno od znaków chromatycznych przy kluczu,
  "jak i od wcześniejszych" znaków w takcie:
}

\relative f' { \key f \major f fis f f bes b b bes es cis bes f }
\addlyrics { f fis f f bes b b bes es cis bes f }


\markup \justify {
  \bold Melizmat to jedna sylaba śpiewana na wielu dźwiękach:
}
\score {
  \relative f {
    \clef F
    \key d \minor
    r8 e e e f16 \melisma g f e f g e f
    g a g f g a f g a8 bes16 a g f e d
    cis8 e a g f16 e d c b4
    c4 \melismaEnd d e
  }
  \addlyrics {
    \once \override LyricText #'self-alignment-X = #0.7
    Chri -- ste e -- le -- i -- son
  }
  \layout {
    system-count = #1
  }
}

\markup \justify {
  Jeśli ostatnia sylaba w słowie jest śpiewana na wielu nutach, to rysuje się za nią
  linię przedłużającą, żeby wskazać jak długo ta sylaba trwa:
}

\score {
  <<
    \new Voice = mix \relative f'' {
      \key bes \minor
      \time 4/2
      \partial 1 des \melisma es f es \melismaEnd
      c1 \melisma des2 es \melismaEnd
      f1 ges~
      ges1 bes,~
      bes4 a bes c a bes c
    }
    \new Lyrics \with { \consists "Balloon_engraver" }
    \lyricsto mix \lyricmode {
      do -- na __ no -- bis __ A -- _
      \override BalloonTextItem #'annotation-balloon = ##f
      \balloonGrobText #'LyricText #'(-2 . -1.5) \markup \smaller \italic "ta sylaba jest śpiewana na dwóch nutach, ale nie wstawiamy linii przedłużającej bo nie ma gdzie"
      gnus _ De -- _ i
    }
  >>
  \layout { ragged-right = ##f }
}